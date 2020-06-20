`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:             https://www.kampis-elektroecke.de
// Engineer:            Daniel Kampert
// 
// Create           	Date: 20.06.2020 11:44:57
// Design Name: 
// Module Name:         Testbench
// Project Name: 
// Target Devices: 
// Tool Versions:       Vivado 2020.1
// Description:         Testbench for the AXI-Stream Slave project from
//                      https://www.kampis-elektroecke.de/2020/04/axi-stream-interface/
// Dependencies: 
// 
// Revision:
//  Revision            0.01 - File Created
//  Revision            0.02 - Migrate to Vivado 2020.1
//
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import axi4stream_vip_pkg::*;
import StreamWriter_axi4stream_vip_0_0_pkg::*;

module Testbench();

    // Simulation inputs
    bit SimulationClock = 0;
    bit nSimulationReset = 0;
    bit[31:0] SimulationData;

    // Simulation outputs
    bit TREADY;
    bit TVALID;
    bit TLAST;
    bit[31:0] TDATA;
    
    bit[4:0] Index;
    bit[31:0] DataOut;

    StreamWriter Writer(
        .ACLK(SimulationClock),
        .ARESETN(nSimulationReset),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID)
    );

    Top DUT(
        .ACLK(SimulationClock),
        .ARESETN(nSimulationReset),
        .TDATA_RXD(TDATA),
        .TREADY_RXD(TREADY),
        .TVALID_RXD(TVALID),
        .TLAST_RXD(TLAST),
        .DataOut(DataOut),
        .Index(Index)
    );

    StreamWriter_axi4stream_vip_0_0_mst_t           WriteAgent;

    // Generate the clock
    always #8 SimulationClock = ~SimulationClock;

    task SendData(xil_axi4stream_uint Start, xil_axi4stream_uint MessageLength);
        for(xil_axi4stream_uint CurrentMessage = 0; CurrentMessage < MessageLength; CurrentMessage++) begin
            axi4stream_transaction Write;

            for(xil_axi4stream_uint CurrentByte = 0; CurrentByte < 4; CurrentByte++) begin
                SimulationData[CurrentByte * 8+:8] = Start + (CurrentByte * (CurrentMessage + 1));
            end

            // Create a new write transaction
            Write = WriteAgent.driver.create_transaction("Master write transaction");

            // Set TDATA
            Write.set_data_beat(SimulationData);

            // Set TLAST. Enable it for the last packet
            Write.set_last(0);
            if(CurrentMessage == (MessageLength - 1)) begin
                Write.set_last(1);
            end

            WriteAgent.driver.send(Write);
        end
    endtask

   initial begin

        // Create new agent
        WriteAgent = new("Master agent", Writer.StreamWriter.inst.IF);
        WriteAgent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

        // Wait at least 16 clock cycles after a reset
        #500ns;
        nSimulationReset <= 1'b1;

        // Start the agents
        WriteAgent.start_master();

        fork
            begin
                SendData(0, 4);
            end
        join_any

        Index = 16'h2;

        #10000 $finish;

    end
endmodule