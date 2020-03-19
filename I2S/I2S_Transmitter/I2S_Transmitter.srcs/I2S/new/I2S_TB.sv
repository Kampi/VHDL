`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:             https://www.kampis-elektroecke.de
// Engineer:            Daniel Kampert
// 
// Create Date:         03.02.2020 12:24:19
// Design Name: 
// Module Name:         I2S_TB_Arch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:         Testbench for the I2S audio project from
//                      https://www.kampis-elektroecke.de/fpga/i2s/
// 
// Dependencies: 
// 
// Revision:
//  Revision            0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module I2S_TB();

    bit SimulationClock = 0;
    bit nSimulationReset = 0;
    bit[31:0] SimulationData [];

    // AXI-Stream interface
    bit TREADY;
    bit TVALID;
    bit TLAST;
    bit[31:0] TDATA;

    // I2S interface
    bit SCLK = 0;
    bit LRCLK;
    bit SD;
    bit MCLK;

    Top Transmitter(
            .Clock(SimulationClock),
            .nReset(nSimulationReset),
            .MCLK(MCLK),
            .SCLK(SCLK),
            .LRCLK(LRCLK),
            .SD(SD)
    );

    // Generate the clocks
    always #4ns SimulationClock = ~SimulationClock;

    initial begin

    #20ns;

    nSimulationReset = 1;

    #1000000 $finish;

    end
endmodule