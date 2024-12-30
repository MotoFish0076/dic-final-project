`timescale 1ns/1ps

`ifdef RTL
    `define CYCLE_TIME 1.5
`endif
`ifdef GATE
    `define CYCLE_TIME 1.5
`endif
//==============================================
//==============================================                    
//                                              
//  File Name       :   PATTERN.v                   
//  Module Name     :   PATTERN                        
//  Release version :   v1.0                
//                                              
//==============================================
//==============================================

module PATTERN	(
    rst_n,
    clk,
	// output
    Input_1, Input_2, Input_3, Input_4, Input_5, Input_6, Input_7, Input_8, 
    Input_9, Input_10, Input_11, Input_12, Input_13, Input_14, Input_15, Input_16, 
    Input_17, Input_18, Input_19, Input_20, Input_21, Input_22, Input_23, Input_24, 
    Input_25, Input_26, Input_27, Input_28, Input_29, Input_30, Input_31, Input_32,

	//input
    out_valid,
	Output
);

//------------------------------
//  I/O Pors
//------------------------------
output reg rst_n;
output reg clk;
output reg [3:0]Input_1;
output reg [3:0]Input_2;
output reg [3:0]Input_3;
output reg [3:0]Input_4;
output reg [3:0]Input_5;
output reg [3:0]Input_6;
output reg [3:0]Input_7;
output reg [3:0]Input_8;
output reg [3:0]Input_9;
output reg [3:0]Input_10;
output reg [3:0]Input_11;
output reg [3:0]Input_12;
output reg [3:0]Input_13;
output reg [3:0]Input_14;
output reg [3:0]Input_15;
output reg [3:0]Input_16;
output reg [3:0]Input_17;
output reg [3:0]Input_18;
output reg [3:0]Input_19;
output reg [3:0]Input_20;
output reg [3:0]Input_21;
output reg [3:0]Input_22;
output reg [3:0]Input_23;
output reg [3:0]Input_24;
output reg [3:0]Input_25;
output reg [3:0]Input_26;
output reg [3:0]Input_27;
output reg [3:0]Input_28;
output reg [3:0]Input_29;
output reg [3:0]Input_30;
output reg [3:0]Input_31;
output reg [3:0]Input_32;

input out_valid;
input [12:0] Output;

//------------------------------
//  Parameter & Integer
//------------------------------
integer i, j, seed = 33;
parameter PAT_NUM = 10;

//------------------------------
//  Register
//------------------------------
reg [3:0] pat_Input[0:31];
reg [12:0] Golden_Output;
reg [3:0] weight[0:31];
reg [30:0] latency;
reg [1:0] shift_amount;
//------------------------------
//  Clock Generation
//------------------------------
real CYCLE = `CYCLE_TIME;
always	#(CYCLE/2.0) clk = ~clk; //clock

//------------------------------
//  Initial Block
//------------------------------
initial begin
    reset_task;
    for (j = 0; j < PAT_NUM; j = j + 1) begin
        gen_input_task;
        send_input_task;
        // wait_outout_task;
        check_output_task;
        Golden_Output = 'd0;
        // display_weights;
        $display("\033[0;34mPASS PATTERN NO.%4d,\033[m \033[0;32mexecution cycle : %4d,\033[m", j, latency);
    end
    pass_task;
end

//------------------------------
//  Tasks
//------------------------------

task reset_task; begin
    force clk = 0;
    rst_n = 1;
    latency = 0;
    Golden_Output = 0;
    shift_amount = 'd3;
    {Input_1, Input_2, Input_3, Input_4, Input_5, Input_6, Input_7, Input_8,
     Input_9, Input_10, Input_11, Input_12, Input_13, Input_14, Input_15, Input_16,
     Input_17, Input_18, Input_19, Input_20, Input_21, Input_22, Input_23, Input_24,
     Input_25, Input_26, Input_27, Input_28, Input_29, Input_30, Input_31, Input_32} = 'dx;

    #(CYCLE/2) rst_n = 0;
    #(CYCLE/2) rst_n = 1;

    #(CYCLE/2.0) release clk;
end endtask

task gen_input_task; begin
    for (i = 0; i < 32; i = i + 1) begin
        pat_Input[i] = {$random(seed)} % 16;
        Golden_Output = Golden_Output + pat_Input[i] * weight[i];
        // $display("pat_Input[%0d] = %0d", i, pat_Input[i]);
    end
    $display("Golden_Output = %0d", Golden_Output);
end endtask

task wait_outout_task; begin
    while (out_valid !== 1) begin
        latency = latency + 1;
        if(latency >= 3000)begin
            $display ("----------------------------------------------------------------------------------------------------------------------");
            $display ("                                                 latency exceeds 3000 cycle                                           ");
            $display ("                                      There is some wrong with your code about out_valid                              ");
            $display ("----------------------------------------------------------------------------------------------------------------------");
            $finish;  
        end
        // Input_1 = 'dx;
        // Input_2 = 'dx;
        // Input_3 = 'dx;
        // Input_4 = 'dx;
        // Input_5 = 'dx;
        // Input_6 = 'dx;
        // Input_7 = 'dx;
        // Input_8 = 'dx;
        // Input_9 = 'dx;
        // Input_10 = 'dx;
        // Input_11 = 'dx;
        // Input_12 = 'dx;
        // Input_13 = 'dx;
        // Input_14 = 'dx;
        // Input_15 = 'dx;
        // Input_16 = 'dx;
        // Input_17 = 'dx;
        // Input_18 = 'dx;
        // Input_19 = 'dx;
        // Input_20 = 'dx;
        // Input_21 = 'dx;
        // Input_22 = 'dx;
        // Input_23 = 'dx;
        // Input_24 = 'dx;
        // Input_25 = 'dx;
        // Input_26 = 'dx;
        // Input_27 = 'dx;
        // Input_28 = 'dx;
        // Input_29 = 'dx;
        // Input_30 = 'dx;
        // Input_31 = 'dx;
        // Input_32 = 'dx;
        @(negedge clk);      
    end
end endtask

task check_output_task; begin
    while (out_valid) begin
        latency = latency + 1;
        if(Golden_Output !== Output) begin
            fail_task;
        end
        else begin
            
        end
        @(posedge clk);
    end
end endtask

task send_input_task; begin
    for (i = 3; i >= 0; i = i - 1) begin
        Input_1 = weight[0] * pat_Input[0][i];
        Input_2 = weight[1] * pat_Input[1][i];
        Input_3 = weight[2] * pat_Input[2][i];
        Input_4 = weight[3] * pat_Input[3][i];
        Input_5 = weight[4] * pat_Input[4][i];
        Input_6 = weight[5] * pat_Input[5][i];
        Input_7 = weight[6] * pat_Input[6][i];
        Input_8 = weight[7] * pat_Input[7][i];
        Input_9 = weight[8] * pat_Input[8][i];
        Input_10 = weight[9] * pat_Input[9][i];
        Input_11 = weight[10] * pat_Input[10][i];
        Input_12 = weight[11] * pat_Input[11][i];
        Input_13 = weight[12] * pat_Input[12][i];
        Input_14 = weight[13] * pat_Input[13][i];
        Input_15 = weight[14] * pat_Input[14][i];
        Input_16 = weight[15] * pat_Input[15][i];
        Input_17 = weight[16] * pat_Input[16][i];
        Input_18 = weight[17] * pat_Input[17][i];
        Input_19 = weight[18] * pat_Input[18][i];
        Input_20 = weight[19] * pat_Input[19][i];
        Input_21 = weight[20] * pat_Input[20][i];
        Input_22 = weight[21] * pat_Input[21][i];
        Input_23 = weight[22] * pat_Input[22][i];
        Input_24 = weight[23] * pat_Input[23][i];
        Input_25 = weight[24] * pat_Input[24][i];
        Input_26 = weight[25] * pat_Input[25][i];
        Input_27 = weight[26] * pat_Input[26][i];
        Input_28 = weight[27] * pat_Input[27][i];
        Input_29 = weight[28] * pat_Input[28][i];
        Input_30 = weight[29] * pat_Input[29][i];
        Input_31 = weight[30] * pat_Input[30][i];
        Input_32 = weight[31] * pat_Input[31][i];
        @(negedge clk); 
    end
    // Set pattern signal
    // Input_1 = 'dx;
    // Input_2 = 'dx;
    // Input_3 = 'dx;
    // Input_4 = 'dx;
    // Input_5 = 'dx;
    // Input_6 = 'dx;
    // Input_7 = 'dx;
    // Input_8 = 'dx;
    // Input_9 = 'dx;
    // Input_10 = 'dx;
    // Input_11 = 'dx;
    // Input_12 = 'dx;
    // Input_13 = 'dx;
    // Input_14 = 'dx;
    // Input_15 = 'dx;
    // Input_16 = 'dx;
    // Input_17 = 'dx;
    // Input_18 = 'dx;
    // Input_19 = 'dx;
    // Input_20 = 'dx;
    // Input_21 = 'dx;
    // Input_22 = 'dx;
    // Input_23 = 'dx;
    // Input_24 = 'dx;
    // Input_25 = 'dx;
    // Input_26 = 'dx;
    // Input_27 = 'dx;
    // Input_28 = 'dx;
    // Input_29 = 'dx;
    // Input_30 = 'dx;
    // Input_31 = 'dx;
    // Input_32 = 'dx;
    @(negedge clk); 
end endtask

// This task is for debugging only
task display_weights; begin
    for (i = 0; i < 32; i = i + 1) begin
        $display("weight[%0d] = %0d", i, weight[i]);
    end
end endtask

task fail_task;begin
$display ("--------------------------------------------------------------------------------------------------------------------------------------------");
$display ("                                                                        OUTPUT FAIL!                                                        ");
$display ("                                                           Ans(OUT): %d,  Your output : %4d  at %8t                           ",Golden_Output,Output,$time);
$display ("--------------------------------------------------------------------------------------------------------------------------------------------");
$finish;
end endtask

task pass_task;begin
$display ("----------------------------------------------------------------------------------------------------------------------");
$display ("                                                  Congratulations!                                                    ");
$display ("                                           You have passed all patterns!                                              ");
$display ("----------------------------------------------------------------------------------------------------------------------");
$finish;    
end endtask

endmodule

