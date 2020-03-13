`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         	https://www.kampis-elektroecke.de
// Engineer:        	Daniel Kampert
// 
// Create Date:     	01.02.2020 23:16:36
// Design Name: 
// Module Name:     	Testbench
// Project Name: 
// Target Devices: 
// Tool Versions:       Vivado 2019.2
// Description:         Testbench for the AXIS-I2S transmitter.
// 
// Dependencies: 
// 
// Revision:
//  Revision        	0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import axi4stream_vip_pkg::*;
import StreamWriter_axi4stream_vip_0_0_pkg::*;

module Testbench();

    // Simulation signals
    bit SimulationClock = 0;
    bit SimulationResetN = 0;
    bit[31:0] SimulationData[0:99] = {  32'h0000, 32'h080A, 32'h100B, 32'h17FC, 32'h1FD5, 32'h278E, 32'h2F1F, 32'h3680,
                                        32'h3DAA, 32'h4496, 32'h4B3D, 32'h5197, 32'h579F, 32'h5D4F, 32'h62A0, 32'h678E,
                                        32'h6C13, 32'h702B, 32'h73D1, 32'h7703, 32'h79BC, 32'h7BFB, 32'h7DBC,32'h7EFE,
                                        32'h7FBF, 32'h8000, 32'h7FBF, 32'h7EFE, 32'h7DBC, 32'h7BFB, 32'h79BC, 32'h7703,
                                        32'h73D1, 32'h702B, 32'h6C13, 32'h678E, 32'h62A0, 32'h5D4F, 32'h579F, 32'h5197,
                                        32'h4B3D, 32'h4496, 32'h3DAA, 32'h3680, 32'h2F1F, 32'h278E, 32'h1FD5, 32'h17FC,
                                        32'h100B, 32'h080A, 32'h0000, 32'h0000, 32'h080A, 32'h100B, 32'h17FC, 32'h1FD5,
                                        32'h278E, 32'h2F1F, 32'h3680, 32'h3DAA, 32'h4496, 32'h4B3D, 32'h5197, 32'h579F,
                                        32'h5D4F, 32'h62A0, 32'h678E, 32'h6C13, 32'h702B, 32'h73D1, 32'h7703, 32'h79BC,
                                        32'h7BFB, 32'h7DBC, 32'h7EFE, 32'h7FBF, 32'h8000, 32'h7FBF, 32'h7EFE, 32'h7DBC,
                                        32'h7BFB, 32'h79BC, 32'h7703, 32'h73D1, 32'h702B, 32'h6C13, 32'h678E, 32'h62A0,
                                        32'h5D4F, 32'h579F, 32'h5197, 32'h4B3D, 32'h4496, 32'h3DAA, 32'h3680, 32'h2F1F,
                                        32'h278E, 32'h1FD5, 32'h17FC, 32'h100B
                                    }; 

    // AXI-Stream
    bit TREADY;
    bit TVALID;
    bit TLAST;
    bit[31:0] TDATA;

    // I2S
    bit SCLK;
    bit SD;
    bit LRCLK;
    bit MCLK = 0;

    StreamWriter Writer(
        .ACLK(SimulationClock),
        .ARESETN(SimulationResetN),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID)
    );

    AXIS_I2S DUT(
        .aclk(SimulationClock),
        .aresetn(SimulationResetN),
        .TDATA_RXD(TDATA),
        .TREADY_RXD(TREADY),
        .TVALID_RXD(TVALID),
        .MCLK(MCLK),
        .LRCLK(LRCLK),
        .SCLK(SCLK),
        .SD(SD)
    );

    StreamWriter_axi4stream_vip_0_0_mst_t           WriteAgent;

    task SendData(xil_axi4stream_uint Length);
        for(xil_axi4stream_uint CurrentMessage = 0; CurrentMessage < Length; CurrentMessage++) begin
            axi4stream_transaction Write;

            // Create a new write transaction
            Write = WriteAgent.driver.create_transaction("Master write transaction");

            // Set TDATA
            Write.set_data_beat(SimulationData[CurrentMessage]);

            // Set TLAST. Enable it for the last packet
            Write.set_last(0);
            if(CurrentMessage == (Length - 1)) begin
                Write.set_last(1);
            end

            WriteAgent.driver.send(Write);
        end
    endtask

    // Generate the clocks
    always #8 SimulationClock = ~SimulationClock;
    always #80 MCLK = ~MCLK;

    initial begin

        // Create new agents
        WriteAgent = new("Master agent", Writer.StreamWriter.inst.IF);
        WriteAgent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

        // Wait at least 16 clock cycles after a reset
        #500ns;
        SimulationResetN <= 1'b1;

        // Start the agents
        WriteAgent.start_master();

        SendData(100);
        SendData(100);

        #50000 $finish;

    end
endmodule