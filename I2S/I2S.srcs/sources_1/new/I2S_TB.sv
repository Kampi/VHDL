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
// Description:         Testbench for the I2S audio project.
// 
// Dependencies: 
// 
// Revision:
//  Revision            0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//import axi4stream_vip_pkg::*;
//import StreamWriter_axi4stream_vip_0_0_pkg::*;

module I2S_TB();

    bit SimulationClock = 0;
    bit SimulationResetN = 0;
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

//    StreamWriter Writer(
//        .ACLK(SimulationClock),
//        .ARESETN(ARESETn),
//        .M_AXIS_tdata(TDATA),
//        .M_AXIS_tlast(TLAST),
//        .M_AXIS_tready(TREADY),
//        .M_AXIS_tvalid(TVALID)
//    );

    Top Transmitter(
            .Clock(SimulationClock),
            .ResetN(ARESETn),
            .MCLK(MCLK),
            .SCLK(SCLK),
            .LRCLK(LRCLK),
            .SD(SD)
    );

//    StreamWriter_axi4stream_vip_0_0_mst_t           WriteAgent;

//    task GenerateData(xil_axi4stream_uint Start, xil_axi4stream_uint Length);
//        for(xil_axi4stream_uint CurrentMessage = 0; CurrentMessage < Length; CurrentMessage++) begin
//            for(xil_axi4stream_uint CurrentByte = 0; CurrentByte < 4; CurrentByte++) begin
//                SimulationData[CurrentMessage][CurrentByte * 8+:8] = Start + (CurrentByte * (CurrentMessage + 1));
//            end
//        end
//    endtask

//    task MasterSend();
//        axi4stream_transaction Write;
        
//        foreach(SimulationData[i]) begin
//            // Create a new write transaction
//            Write = WriteAgent.driver.create_transaction("Master write transaction");

//            // Set TDATA
//            Write.set_data_beat(SimulationData[i]);

//            // Set TLAST. Enable it for the last packet
//            Write.set_last(0);
//            if(i == (SimulationData.size() - 1)) begin
//                Write.set_last(1);
//            end

//            WriteAgent.driver.send(Write);
//        end
//    endtask

    // Generate the clocks
    always #4ns SimulationClock = ~SimulationClock;

    initial begin

//        // Create new agents
//        WriteAgent = new("Master agent", Writer.StreamWriter.inst.IF);
//        WriteAgent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

//        // Wait at least 16 clock cycles after a reset
//        #500ns;
//        SimulationResetN <= 1'b1;

//        // Start the agents
//        WriteAgent.start_master();

//        // Create new data array
//        SimulationData = new[7];

//        // Generate new data
//        GenerateData(0, 7);

//        wait(TREADY == 1) #1;

//        fork
//            begin
//                MasterSend();
//            end
//        join_any

        #20000 $finish;

    end
endmodule