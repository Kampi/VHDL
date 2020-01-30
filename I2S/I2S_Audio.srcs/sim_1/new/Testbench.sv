`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:             https://www.kampis-elektroecke.de
// Engineer:            Daniel Kampert  
// 
// Create Date:         10.07.2019 07:41:38
// Design Name: 
// Module Name:         Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:         Testbench for I2S module.
// 
// Dependencies: 
// 
// Revision:
//  Revision            0.01 - File Created
//
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
import axi4stream_vip_pkg::*;
import StreamWriter_axi4stream_vip_0_0_pkg::*;

module Testbench();

    // Simulation inputs
    bit SimulationClock = 0;
    bit SimulationResetn = 0;
    bit[31:0] SimulationData;

    // Simulation outputs
    bit Locked = 0;
    bit TREADY;
    bit TVALID;
    bit TLAST;
    bit[31:0] TDATA;

    // I2S output
    bit MCLK;
    bit LRCLK;
    bit SCLK;
    bit SD;

    StreamWriter_axi4stream_vip_0_0_mst_t       WriteAgent;

    // Create the clock (125 MHz)
    always #4ns SimulationClock = ~SimulationClock;

    ClockGeneration AudioClock(
        .ClockIn(SimulationClock),
        .ClockOut(MCLK),
        .Locked(Locked)
    );

    StreamWriter Writer(
        .ACLK(SimulationClock),
        .ARESETN(SimulationResetn),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID)
    );

    I2S Transmitter(
        .ACLK(SimulationClock),
        .ARESETn(SimulationResetn),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID),
        .MCLK(MCLK),
        .LRCLK(LRCLK),
        .SCLK(SCLK),
        .SD(SD)
    );

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

        // Create new agents
        WriteAgent = new("Master agent", Writer.DataWriter.inst.IF);
        WriteAgent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

        // Reset the device
        SimulationResetn <= 1'b0;

        // Wait for lock
        wait(Locked == 1'b1);
        SimulationResetn <= 1'b1;

        // Start the agents
        WriteAgent.start_master();

        // Send data
        SendData(0, 4);
    end
endmodule