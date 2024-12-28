`timescale 1ns/1ps
`include "../00_TESTBED/PATTERN.v"

`ifdef RTL
  `include "../01_RTL/CIM_adder_tree.v" 
`endif

`ifdef GATE
  `include "../02_SYN/Netlist/CIM_adder_tree_SYN.v"
`endif
module TESTBED;
   //input
	wire clk;
	wire rst_n;
    wire input_valid;
    wire [3:0]Input_1;
    wire [3:0]Input_2;
    wire [3:0]Input_3;
    wire [3:0]Input_4;
    wire [3:0]Input_5;
    wire [3:0]Input_6;
    wire [3:0]Input_7;
    wire [3:0]Input_8;
    wire [3:0]Input_9;
    wire [3:0]Input_10;
    wire [3:0]Input_11;
    wire [3:0]Input_12;
    wire [3:0]Input_13;
    wire [3:0]Input_14;
    wire [3:0]Input_15;
    wire [3:0]Input_16;
    wire [3:0]Input_17;
    wire [3:0]Input_18;
    wire [3:0]Input_19;
    wire [3:0]Input_20;
    wire [3:0]Input_21;
    wire [3:0]Input_22;
    wire [3:0]Input_23;
    wire [3:0]Input_24;
    wire [3:0]Input_25;
    wire [3:0]Input_26;
    wire [3:0]Input_27;
    wire [3:0]Input_28;
    wire [3:0]Input_29;
    wire [3:0]Input_30;
    wire [3:0]Input_31;
    wire [3:0]Input_32;

	//output
	wire out_valid;
	wire [12:0] Output;

    integer i;
    reg [3:0] weight [0:31];

initial begin 
    for (i=0; i<32; i=i+1) begin
        u_PATTERN.weight[i] = $random % 16;
    end

    `ifdef RTL
    $fsdbDumpfile("CIM_adder_tree.fsdb");
    $fsdbDumpvars(0,"+mda");
    $fsdbDumpvars();
    `endif
    // `ifdef GATE
    // $sdf_annotate("../02_SYN/Netlist/Convolution_without_pipeline_SYN.sdf",u_Convolution_without_pipeline);
    // $fsdbDumpfile("Convolution_without_pipeline_SYN.fsdb");
    // $fsdbDumpvars(0,"+mda");
    // $fsdbDumpvars();
    // `endif
end

PATTERN	u_PATTERN(
		.clk(clk),
		.rst_n(rst_n),
        .input_valid(input_valid),
		.Input_1(Input_1),
        .Input_2(Input_2),
        .Input_3(Input_3),
        .Input_4(Input_4),
        .Input_5(Input_5),
        .Input_6(Input_6),
        .Input_7(Input_7),
        .Input_8(Input_8),
        .Input_9(Input_9),
        .Input_10(Input_10),
        .Input_11(Input_11),
        .Input_12(Input_12),
        .Input_13(Input_13),
        .Input_14(Input_14),
        .Input_15(Input_15),
        .Input_16(Input_16),
        .Input_17(Input_17),
        .Input_18(Input_18),
        .Input_19(Input_19),
        .Input_20(Input_20),
        .Input_21(Input_21),
        .Input_22(Input_22),
        .Input_23(Input_23),
        .Input_24(Input_24),
        .Input_25(Input_25),
        .Input_26(Input_26),
        .Input_27(Input_27),
        .Input_28(Input_28),
        .Input_29(Input_29),
        .Input_30(Input_30),
        .Input_31(Input_31),
        .Input_32(Input_32),
		.out_valid(out_valid),
		.Output(Output)
		);

`ifdef RTL
CIM_adder_tree u_CIM_unit(
		.clk(clk),
		.rst_n(rst_n),
        .input_valid(input_valid),
		.Input_1(Input_1),
        .Input_2(Input_2),
        .Input_3(Input_3),
        .Input_4(Input_4),
        .Input_5(Input_5),
        .Input_6(Input_6),
        .Input_7(Input_7),
        .Input_8(Input_8),
        .Input_9(Input_9),
        .Input_10(Input_10),
        .Input_11(Input_11),
        .Input_12(Input_12),
        .Input_13(Input_13),
        .Input_14(Input_14),
        .Input_15(Input_15),
        .Input_16(Input_16),
        .Input_17(Input_17),
        .Input_18(Input_18),
        .Input_19(Input_19),
        .Input_20(Input_20),
        .Input_21(Input_21),
        .Input_22(Input_22),
        .Input_23(Input_23),
        .Input_24(Input_24),
        .Input_25(Input_25),
        .Input_26(Input_26),
        .Input_27(Input_27),
        .Input_28(Input_28),
        .Input_29(Input_29),
        .Input_30(Input_30),
        .Input_31(Input_31),
        .Input_32(Input_32),
		.out_valid(out_valid),
		.Output(Output)
		);
`endif

`ifdef GATE
CIM_adder_tree u_CIM_unit(
		.clk(clk),
		.rst_n(rst_n),
        .input_valid(input_valid),
		.Input_1(Input_1),
        .Input_2(Input_2),
        .Input_3(Input_3),
        .Input_4(Input_4),
        .Input_5(Input_5),
        .Input_6(Input_6),
        .Input_7(Input_7),
        .Input_8(Input_8),
        .Input_9(Input_9),
        .Input_10(Input_10),
        .Input_11(Input_11),
        .Input_12(Input_12),
        .Input_13(Input_13),
        .Input_14(Input_14),
        .Input_15(Input_15),
        .Input_16(Input_16),
        .Input_17(Input_17),
        .Input_18(Input_18),
        .Input_19(Input_19),
        .Input_20(Input_20),
        .Input_21(Input_21),
        .Input_22(Input_22),
        .Input_23(Input_23),
        .Input_24(Input_24),
        .Input_25(Input_25),
        .Input_26(Input_26),
        .Input_27(Input_27),
        .Input_28(Input_28),
        .Input_29(Input_29),
        .Input_30(Input_30),
        .Input_31(Input_31),
        .Input_32(Input_32),
		.out_valid(out_valid),
		.Output(Output)
		);
`endif


endmodule
