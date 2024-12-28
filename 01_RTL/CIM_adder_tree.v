
module CIM_adder_tree(
	//input
    rst_n,
    clk,
    input_valid,
    Input_1, Input_2, Input_3, Input_4, Input_5, Input_6, Input_7, Input_8, 
    Input_9, Input_10, Input_11, Input_12, Input_13, Input_14, Input_15, Input_16, 
    Input_17, Input_18, Input_19, Input_20, Input_21, Input_22, Input_23, Input_24, 
    Input_25, Input_26, Input_27, Input_28, Input_29, Input_30, Input_31, Input_32,

	// output
    out_valid,
	Output
);

input rst_n;
input clk;
input input_valid;
input [3:0]Input_1;
input [3:0]Input_2;
input [3:0]Input_3;
input [3:0]Input_4;
input [3:0]Input_5;
input [3:0]Input_6;
input [3:0]Input_7;
input [3:0]Input_8;
input [3:0]Input_9;
input [3:0]Input_10;
input [3:0]Input_11;
input [3:0]Input_12;
input [3:0]Input_13;
input [3:0]Input_14;
input [3:0]Input_15;
input [3:0]Input_16;
input [3:0]Input_17;
input [3:0]Input_18;
input [3:0]Input_19;
input [3:0]Input_20;
input [3:0]Input_21;
input [3:0]Input_22;
input [3:0]Input_23;
input [3:0]Input_24;
input [3:0]Input_25;
input [3:0]Input_26;
input [3:0]Input_27;
input [3:0]Input_28;
input [3:0]Input_29;
input [3:0]Input_30;
input [3:0]Input_31;
input [3:0]Input_32;

output reg out_valid;
output reg [12:0]Output;

reg [2:0]  cnt;
reg [8:0]  input_buffer;
reg [12:0] shift_buffer;

integer i;

// Sequential block for the counter
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset the counter to 5
            cnt <= 3'd5;
        end else if (cnt == 3'd0) begin
            // If count reaches 0, reset to 5
            cnt <= 3'd4;
        end else begin
            // Decrement the counter
            cnt <= cnt - 1;
        end
    end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)begin
       out_valid <= 'd0;
    end
    else begin
        if (cnt == 0)begin
            out_valid <= 'd1;
        end
        else begin
            out_valid <= 'd0;
        end
    end
end



// input buffer
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)begin
        input_buffer <= 'd0;
    end
    else begin
        input_buffer <= Input_1 + Input_2 + Input_3 + Input_4 + Input_5 + Input_6 + Input_7 + Input_8 + 
                         Input_9 + Input_10 + Input_11 + Input_12 + Input_13 + Input_14 + Input_15 + Input_16 + 
                         Input_17 + Input_18 + Input_19 + Input_20 + Input_21 + Input_22 + Input_23 + Input_24 + 
                         Input_25 + Input_26 + Input_27 + Input_28 + Input_29 + Input_30 + Input_31 + Input_32;
    end
end

// shift buffer
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)begin
        shift_buffer <= 'd0;
    end
    else begin
        shift_buffer <= input_buffer << (cnt - 1);
    end
end

// Output
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)begin
        Output <= 'd0;
    end

    else begin
        if (cnt == 4)
            Output <= 0;
        else
            Output <= Output + shift_buffer;
        // $display("Output: %d", Output);
    end
end
endmodule

// // L1
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n)begin
//         for (i = 0; i < 16; i = i + 1)begin
//             L1_buffer[i] <= 'd0;
//         end
//     end
//     else begin
//         L1_buffer[0] <= Input_1 + Input_2;
//         L1_buffer[1] <= Input_3 + Input_4;
//         L1_buffer[2] <= Input_5 + Input_6;
//         L1_buffer[3] <= Input_7 + Input_8;
//         L1_buffer[4] <= Input_9 + Input_10;
//         L1_buffer[5] <= Input_11 + Input_12;
//         L1_buffer[6] <= Input_13 + Input_14;
//         L1_buffer[7] <= Input_15 + Input_16;
//         L1_buffer[8] <= Input_17 + Input_18;
//         L1_buffer[9] <= Input_19 + Input_20;
//         L1_buffer[10] <= Input_21 + Input_22;
//         L1_buffer[11] <= Input_23 + Input_24;
//         L1_buffer[12] <= Input_25 + Input_26;
//         L1_buffer[13] <= Input_27 + Input_28;
//         L1_buffer[14] <= Input_29 + Input_30;
//         L1_buffer[15] <= Input_31 + Input_32;
//     end
// end

// // L2
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n)begin
//         for (i = 0; i < 8; i = i + 1)begin
//             L2_buffer[i] <= 'd0;
//         end
//     end
//     else begin
//         L2_buffer[0] <= L1_buffer[0] + L1_buffer[1];
//         L2_buffer[1] <= L1_buffer[2] + L1_buffer[3];
//         L2_buffer[2] <= L1_buffer[4] + L1_buffer[5];
//         L2_buffer[3] <= L1_buffer[6] + L1_buffer[7];
//         L2_buffer[4] <= L1_buffer[8] + L1_buffer[9];
//         L2_buffer[5] <= L1_buffer[10] + L1_buffer[11];
//         L2_buffer[6] <= L1_buffer[12] + L1_buffer[13];
//         L2_buffer[7] <= L1_buffer[14] + L1_buffer[15];
//     end
// end

// // L3
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n)begin
//         for (i = 0; i < 4; i = i + 1)begin
//             L3_buffer[i] <= 'd0;
//         end
//     end
//     else begin
//         L3_buffer[0] <= L2_buffer[0] + L2_buffer[1];
//         L3_buffer[1] <= L2_buffer[2] + L2_buffer[3];
//         L3_buffer[2] <= L2_buffer[4] + L2_buffer[5];
//         L3_buffer[3] <= L2_buffer[6] + L2_buffer[7];
//     end
// end

// // L4
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n)begin
//         for (i = 0; i < 2; i = i + 1)begin
//             L4_buffer[i] <= 'd0;
//         end
//     end
//     else begin
//         L4_buffer[0] <= L3_buffer[0] + L3_buffer[1];
//         L4_buffer[1] <= L3_buffer[2] + L3_buffer[3];
//     end
// end