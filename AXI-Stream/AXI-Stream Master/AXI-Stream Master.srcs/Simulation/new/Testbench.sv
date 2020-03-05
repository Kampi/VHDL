`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         https://www.kampis-elektroecke.de
// Engineer:        Daniel Kampert
// 
// Create           Date: 05.03.2020 11:44:57
// Design Name: 
// Module Name:     Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:     Testbench for the AXI-Stream Master project.
// 
// Dependencies: 
// 
// Revision:
//  Revision        0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import axi4stream_vip_pkg::*;
import StreamReader_axi4stream_vip_0_0_pkg::*;

module Testbench();

    // Simulation inputs
    bit SimulationClock = 0;
    bit SimulationResetN = 0;

    // Simulation outputs
    bit TREADY;
    bit TVALID;
    bit TLAST;
    bit[31:0] TDATA;

    bit Trigger;

    StreamReader Reader(
        .ACLK(SimulationClock),
        .ARESETN(SimulationResetN),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID)
    );

    Top DUT(
        .clk(SimulationClock),
        .resetn(SimulationResetN),
        .TDATA_TXD(TDATA),
        .TREADY_TXD(TREADY),
        .TVALID_TXD(TVALID),
        .TLAST_TXD(TLAST),
        .Trigger(Trigger)
    );

    StreamReader_axi4stream_vip_0_0_slv_t           ReadAgent;

    axi4stream_monitor_transaction                 slv_monitor_transaction;
    axi4stream_monitor_transaction                 slave_moniter_transaction_queue[$];
    xil_axi4stream_uint                            slave_moniter_transaction_queue_size = 0;
    axi4stream_transaction                         wr_transaction;

    task SlaveReceive();
        axi4stream_ready_gen                           ready_gen;
        ready_gen = ReadAgent.driver.create_ready("ready_gen");
        ready_gen.set_ready_policy(XIL_AXI4STREAM_READY_GEN_OSC);
        ready_gen.set_low_time(2);
        ready_gen.set_high_time(6);
        ReadAgent.driver.send_tready(ready_gen);
    endtask

    // Generate the clock
    always #8 SimulationClock = ~SimulationClock;

   initial begin

        // Create new agent
        ReadAgent = new("Read agent", Reader.StreamReader.inst.IF);
        ReadAgent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

        // Wait at least 16 clock cycles after a reset
        #500ns;
        SimulationResetN <= 1'b1;

        // Start the agents
        ReadAgent.start_slave();

        fork
            begin
                Trigger <= 1'b1;
                #500ns;
                Trigger <= 1'b0;
                #1000ns;
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