`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         	https://www.kampis-elektroecke.de
// Engineer:        	Daniel Kampert
// 
// Create           	Date: 20.06.2020 11:44:57
// Design Name: 
// Module Name:     	Testbench
// Project Name: 
// Target Devices: 
// Tool Versions:       Vivado 2020.1
// Description:     	Testbench for the AXI-Stream Master project from
//                      https://www.kampis-elektroecke.de/2020/04/axi-stream-interface/
// Dependencies: 
// 
// Revision:
//  Revision        	0.01 - File Created
//  Revision            0.02 - Migrate to Vivado 2020.1
//
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import axi4stream_vip_pkg::*;
import StreamReader_axi4stream_vip_0_0_pkg::*;

module Testbench();

    // Simulation inputs
    bit SimulationClock = 0;
    bit nSimulationReset = 0;

    // Simulation outputs
    bit TREADY;
    bit TVALID;
    bit TLAST;
    bit[31:0] TDATA;

    bit Trigger;

    StreamReader Reader(
        .ACLK(SimulationClock),
        .ARESETN(nSimulationReset),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID)
    );

    Top DUT(
        .ACLK(SimulationClock),
        .ARESETn(nSimulationReset),
        .TDATA_TXD(TDATA),
        .TREADY_TXD(TREADY),
        .TVALID_TXD(TVALID),
        .TLAST_TXD(TLAST),
        .Trigger(Trigger)
    );

    StreamReader_axi4stream_vip_0_0_slv_t           ReadAgent;

    axi4stream_monitor_transaction                  SlaveMonitor_Transaction;
    axi4stream_monitor_transaction                  SlaveMonitor_Transaction_Queue[$];
    xil_axi4stream_uint                             SlaveMonitor_Transaction_QueueSize = 0;

    task SlaveReceive();
        axi4stream_ready_gen Ready;
        Ready = ReadAgent.driver.create_ready("Ready");
        Ready.set_ready_policy(XIL_AXI4STREAM_READY_GEN_OSC);
        Ready.set_low_time(2);
        Ready.set_high_time(6);
        ReadAgent.driver.send_tready(Ready);
    endtask

    // Generate the clock
    always #8 SimulationClock = ~SimulationClock;

    initial begin
        // Create new agent
        ReadAgent = new("Read agent", Reader.StreamReader.inst.IF);
        ReadAgent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

        // Wait at least 16 clock cycles after a reset
        #500ns;
        nSimulationReset <= 1'b1;

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
        
        #10000ns $finish;
    end

    initial begin
        forever begin
            ReadAgent.monitor.item_collected_port.get(SlaveMonitor_Transaction);
            SlaveMonitor_Transaction_Queue.push_back(SlaveMonitor_Transaction);
            SlaveMonitor_Transaction_QueueSize++;
        end
    end
endmodule