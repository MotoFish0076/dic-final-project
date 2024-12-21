module shift(
    Input_valid,
    data_in1,
    data_in2,
    data_in3,
    data_in4,   


    data_out1,
    data_out2,
    data_out3,
    data_out4
);

input            [8:0]data_in1;
input            [8:0]data_in2;
input            [8:0]data_in3;
input            [8:0]data_in4;
input            [2:0]Input_valid;


output           [11:0]data_out1;
output           [11:0]data_out2;
output           [11:0]data_out3;
output           [11:0]data_out4;

//shift
    reg [11:0] shift_reg1; // 用來暫存移位結果的 4-bit 寄存器
    reg [11:0] shift_reg2; 
    reg [11:0] shift_reg3; 
    reg [11:0] shift_reg4; 
    reg [1:0] shift_amount; // 控制移位的位數 (2-bit，範圍 0-3)

    // 初始設定
   // assign data_in = 1'b1;  // 假設 data_in 為 1，實際情況可以由外部設置

    always @(Input_valid) begin
        if (Input_valid == 3)
            shift_amount <= 2'b11;  // reset時從左移 3 位開始
        else if (Input_valid < 3 && Input_valid > 0)
            shift_amount <= shift_amount - 1; // 每個時鐘週期減少移位位數
    end

    // MUX邏輯來控制左移位數
    always @(shift_amount or data_in1) begin
        case (shift_amount)
            2'b11: shift_reg1 = {data_in1, 3'b000};  // 左移 3 位
            2'b10: shift_reg1 = {data_in1, 2'b00};   // 左移 2 位
            2'b01: shift_reg1 = {data_in1, 1'b0};    // 左移 1 位
            2'b00: shift_reg1 = data_in1;            // 不移動
            default: shift_reg1 = 4'b0000;          // 預設為 0
        endcase
    end
     always @(shift_amount or data_in2) begin
        case (shift_amount)
            2'b11: shift_reg2 = {data_in2, 3'b000};  // 左移 3 位
            2'b10: shift_reg2 = {data_in2, 2'b00};   // 左移 2 位
            2'b01: shift_reg2 = {data_in2, 1'b0};    // 左移 1 位
            2'b00: shift_reg2 = data_in2;            // 不移動
            default: shift_reg2 = 4'b0000;          // 預設為 0
        endcase
    end

 always @(shift_amount or data_in3) begin
        case (shift_amount)
            2'b11: shift_reg3 = {data_in3, 3'b000};  // 左移 3 位
            2'b10: shift_reg3 = {data_in3, 2'b00};   // 左移 2 位
            2'b01: shift_reg3 = {data_in3, 1'b0};    // 左移 1 位
            2'b00: shift_reg3 = data_in3;            // 不移動
            default: shift_reg3 = 4'b0000;          // 預設為 0
        endcase
    end

 always @(shift_amount or data_in4) begin
        case (shift_amount)
            2'b11: shift_reg4 = {data_in4, 3'b000};  // 左移 3 位
            2'b10: shift_reg4 = {data_in4, 2'b00};   // 左移 2 位
            2'b01: shift_reg4 = {data_in4, 1'b0};    // 左移 1 位
            2'b00: shift_reg4 = data_in4;            // 不移動
            default: shift_reg4 = 4'b0000;          // 預設為 0
        endcase
    end



    // 將結果輸出
    assign data_out1 = shift_reg1;
    assign data_out2 = shift_reg2;
    assign data_out3 = shift_reg3;
    assign data_out4 = shift_reg4;

endmodule