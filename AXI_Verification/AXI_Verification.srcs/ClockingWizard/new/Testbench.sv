`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:             https://www.kampis-elektroecke.de
// Engineer:            Daniel Kampert
// 
// Create Date:         12.02.2020 14:52:03
// Design Name: 
// Module Name:         Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
//  Revision            0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import axi_vip_pkg::*;
import AXIMaster_axi_vip_0_0_pkg::*;

module Testbench();

bit SimulationClock = 0;
bit SimulationResetN = 0;

bit Locked;
bit [1:0] GPIO_0 = 'h3;

xil_axi_ulong CLKOUT0_DIVIDE = 32'h44A00208;
xil_axi_prot_t Prot = 0;
xil_axi_resp_t Resp;
bit [31:0] Data_Write = 32'h00000001;
bit [31:0] Data_Read;

AXIMaster DUT
(
    .ClockIn(SimulationClock),
    .GPIO_tri_o(GPIO_0),
    .ResetN(SimulationResetN)
);

AXIMaster_axi_vip_0_0_mst_t      MasterAgent;

always #5ns SimulationClock = ~SimulationClock;

initial begin
    MasterAgent = new("master vip agent",DUT.AXIMaster.inst.IF);
    MasterAgent.set_agent_tag("Master VIP");
    MasterAgent.set_verbosity(400);
    MasterAgent.start_master();

    #50ns
    SimulationResetN = 1;
    #5000ns

    $display("Read CLKOUT0_DIVIDE");
    MasterAgent.AXI4LITE_READ_BURST(CLKOUT0_DIVIDE, Prot, Data_Read, Resp);
    MasterAgent.AXI4LITE_WRITE_BURST(CLKOUT0_DIVIDE, Prot, 32'h2ee17, Resp);

    #1ms
    $finish;

end
endmodule
