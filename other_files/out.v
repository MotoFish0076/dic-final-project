module out(
    Input_valid,
    shift_amount,
    data_in1,
    data_in2, 
    data_in3,    
    data_in4, 

    Out_valid,
    O1,
    O2,
    O3,
    O4

);

input            [11:0]data_in1;
input            [11:0]data_in2;
input            [11:0]data_in3;
input            [11:0]data_in4;
input            [2:0]shift_amount;
input            [2:0]Input_valid;


output reg       Out_valid;
output reg       [12:0] O1; 
output reg       [12:0] O2; 
output reg       [12:0] O3; 
output reg       [12:0] O4; 



//out
always @(*) begin
        O1 <= O1 + data_in1;
end
always @(*) begin
        O2 <= O2 + data_in2;
end
always @(*) begin
        O3 <= O3 + data_in3;
end
always @(*) begin
        O4 <= O4 + data_in4;
end


//output_valid
always @(shift_amount) begin
    if (shift_amount == 0)begin
       Out_valid <= 1;
    end
    else begin
        Out_valid <= 0;
    end
end
endmodule