`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         https://www.kampis-elektroecke.de
// Engineer:        Daniel Kampert
// 
// Create Date:     01.02.2020 23:16:36
// Design Name: 
// Module Name:     Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
//  Revision        0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import axi4stream_vip_pkg::*;
import StreamWriter_axi4stream_vip_0_0_pkg::*;
import StreamReader_axi4stream_vip_0_0_pkg::*;

module Testbench();

    // Simulation inputs
    bit SimulationClock = 0;
    bit SimulationResetN = 0;
    bit[31:0] SimulationData;

    // Simulation outputs
    bit TREADY;
    bit TVALID;
    bit TLAST;
    bit[31:0] TDATA;

    StreamWriter Writer(
        .ACLK(SimulationClock),
        .ARESETN(SimulationResetN),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID)
    );

    StreamReader Reader(
        .ACLK(SimulationClock),
        .ARESETN(SimulationResetN),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID)
    );

    StreamWriter_axi4stream_vip_0_0_mst_t           WriteAgent;
    StreamReader_axi4stream_vip_0_0_slv_t           ReadAgent;

    axi4stream_monitor_transaction                 slv_monitor_transaction;
    axi4stream_monitor_transaction                 slave_moniter_transaction_queue[$];
    xil_axi4stream_uint                            slave_moniter_transaction_queue_size = 0;
    axi4stream_transaction                         wr_transaction;

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

    task SlaveReceive();
        axi4stream_ready_gen ready_gen;

        ready_gen = ReadAgent.driver.create_ready("ready_gen");
        ready_gen.set_ready_policy(XIL_AXI4STREAM_READY_GEN_OSC);
        ready_gen.set_low_time(2);
        ready_gen.set_high_time(6);
        ReadAgent.driver.send_tready(ready_gen);
    endtask

    // Generate the clock
    always #10 SimulationClock = ~SimulationClock;

    initial begin

        // Create new agents
        WriteAgent = new("Master agent", Writer.StreamWriter.inst.IF);
        WriteAgent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);
        ReadAgent = new("Read agent", Reader.StreamReader.inst.IF);
        ReadAgent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

        // Wait at least 16 clock cycles after a reset
        #500ns;
        SimulationResetN <= 1'b1;

        // Start the agents
        WriteAgent.start_master();
        ReadAgent.start_slave();

        fork
            begin
                SendData(0, 4);
            end

            begin
                SlaveReceive();
            end
        join_any

        #10000 $finish;

    end

    initial begin
        forever begin
            ReadAgent.monitor.item_collected_port.get(slv_monitor_transaction);
            slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
            slave_moniter_transaction_queue_size++;
        end
    end
endmodule