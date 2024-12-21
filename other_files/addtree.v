module adder_tree(
    input [31:0] Input1,  // 32-bit wide input
    input [31:0] Input2,
    input [31:0] Input3,
    input [31:0] Input4,
    output [8:0]Out1,           // single output
    output [8:0]Out2, 
    output [8:0]Out3,
    output [8:0]Out4 
);

// wire //////////////////////////////
wire [4:0]p11[0:15];
wire [5:0]p12[0:7];
wire [6:0]p13[0:3];
wire [7:0]p14[0:1];

wire [4:0]p21[0:15];
wire [5:0]p22[0:7];
wire [6:0]p23[0:3];
wire [7:0]p24[0:1];

wire [4:0]p31[0:15];
wire [5:0]p32[0:7];
wire [6:0]p33[0:3];
wire [7:0]p34[0:1];

wire [4:0]p41[0:15];
wire [5:0]p42[0:7];
wire [6:0]p43[0:3];
wire [7:0]p44[0:1];

// adder tree
//1
assign p11[0] = Input1[0]+Input1[1];
assign p11[1] = Input1[2]+Input1[3];
assign p11[2] = Input1[4]+Input1[5];
assign p11[3] = Input1[6]+Input1[7];
assign p11[4] = Input1[8]+Input1[9];
assign p11[5] = Input1[10]+Input1[11];
assign p11[6] = Input1[12]+Input1[13];
assign p11[7] = Input1[14]+Input1[15];
assign p11[8] = Input1[16]+Input1[17];
assign p11[9] = Input1[18]+Input1[19];
assign p11[10] = Input1[20]+Input1[21];
assign p11[11] = Input1[22]+Input1[23];
assign p11[12] = Input1[24]+Input1[25];
assign p11[13] = Input1[26]+Input1[27];
assign p11[14] = Input1[28]+Input1[29];
assign p11[15] = Input1[30]+Input1[31];

assign p12[0] = p11[0]+p11[1];
assign p12[1] = p11[2]+p11[3];
assign p12[2] = p11[4]+p11[5];
assign p12[3] = p11[6]+p11[7];
assign p12[4] = p11[8]+p11[9];
assign p12[5] = p11[10]+p11[11];
assign p12[6] = p11[12]+p11[13];
assign p12[7] = p11[14]+p11[15];

assign p13[0] = p12[0]+p12[1];
assign p13[1] = p12[2]+p12[3];
assign p13[2] = p12[4]+p12[5];
assign p13[3] = p12[6]+p12[7];

assign p14[0] = p13[0]+p13[1];
assign p14[1] = p13[2]+p13[3];

assign Out1 = p14[0]+p14[1];
//2
assign p21[0] = Input2[0]+Input2[1];
assign p21[1] = Input2[2]+Input2[3];
assign p21[2] = Input2[4]+Input2[5];
assign p21[3] = Input2[6]+Input2[7];
assign p21[4] = Input2[8]+Input2[9];
assign p21[5] = Input2[10]+Input2[11];
assign p21[6] = Input2[12]+Input2[13];
assign p21[7] = Input2[14]+Input2[15];
assign p21[8] = Input2[16]+Input2[17];
assign p21[9] = Input2[18]+Input2[19];
assign p21[10] = Input2[20]+Input2[21];
assign p21[11] = Input2[22]+Input2[23];
assign p21[12] = Input2[24]+Input2[25];
assign p21[13] = Input2[26]+Input2[27];
assign p21[14] = Input2[28]+Input2[29];
assign p21[15] = Input2[30]+Input2[31];

assign p22[0] = p21[0]+p21[1];
assign p22[1] = p21[2]+p21[3];
assign p22[2] = p21[4]+p21[5];
assign p22[3] = p21[6]+p21[7];
assign p22[4] = p21[8]+p21[9];
assign p22[5] = p21[10]+p21[11];
assign p22[6] = p21[12]+p21[13];
assign p22[7] = p21[14]+p21[15];

assign p23[0] = p22[0]+p22[1];
assign p23[1] = p22[2]+p22[3];
assign p23[2] = p22[4]+p22[5];
assign p23[3] = p22[6]+p22[7];

assign p24[0] = p23[0]+p23[1];
assign p24[1] = p23[2]+p23[3];

assign Out2 = p24[0]+p24[1];
//3
assign p31[0] = Input3[0]+Input3[1];
assign p31[1] = Input3[2]+Input3[3];
assign p31[2] = Input3[4]+Input3[5];
assign p31[3] = Input3[6]+Input3[7];
assign p31[4] = Input3[8]+Input3[9];
assign p31[5] = Input3[10]+Input3[11];
assign p31[6] = Input3[12]+Input3[13];
assign p31[7] = Input3[14]+Input3[15];
assign p31[8] = Input3[16]+Input3[17];
assign p31[9] = Input3[18]+Input3[19];
assign p31[10] = Input3[20]+Input3[21];
assign p31[11] = Input3[22]+Input3[23];
assign p31[12] = Input3[24]+Input3[25];
assign p31[13] = Input3[26]+Input3[27];
assign p31[14] = Input3[28]+Input3[29];
assign p31[15] = Input3[30]+Input3[31];

assign p32[0] = p31[0]+p31[1];
assign p32[1] = p31[2]+p31[3];
assign p32[2] = p31[4]+p31[5];
assign p32[3] = p31[6]+p31[7];
assign p32[4] = p31[8]+p31[9];
assign p32[5] = p31[10]+p31[11];
assign p32[6] = p31[12]+p31[13];
assign p32[7] = p31[14]+p31[15];

assign p33[0] = p32[0]+p32[1];
assign p33[1] = p32[2]+p32[3];
assign p33[2] = p32[4]+p32[5];
assign p33[3] = p32[6]+p32[7];

assign p34[0] = p33[0]+p33[1];
assign p34[1] = p33[2]+p33[3];

assign Out3 = p34[0]+p34[1];
//4
assign p41[0] = Input4[0]+Input4[1];
assign p41[1] = Input4[2]+Input4[3];
assign p41[2] = Input4[4]+Input4[5];
assign p41[3] = Input4[6]+Input4[7];
assign p41[4] = Input4[8]+Input4[9];
assign p41[5] = Input4[10]+Input4[11];
assign p41[6] = Input4[12]+Input4[13];
assign p41[7] = Input4[14]+Input4[15];
assign p41[8] = Input4[16]+Input4[17];
assign p41[9] = Input4[18]+Input4[19];
assign p41[10] = Input4[20]+Input4[21];
assign p41[11] = Input4[22]+Input4[23];
assign p41[12] = Input4[24]+Input4[25];
assign p41[13] = Input4[26]+Input4[27];
assign p41[14] = Input4[28]+Input4[29];
assign p41[15] = Input4[30]+Input4[31];

assign p42[0] = p41[0]+p41[1];
assign p42[1] = p41[2]+p41[3];
assign p42[2] = p41[4]+p41[5];
assign p42[3] = p41[6]+p41[7];
assign p42[4] = p41[8]+p41[9];
assign p42[5] = p41[10]+p41[11];
assign p42[6] = p41[12]+p41[13];
assign p42[7] = p41[14]+p41[15];

assign p43[0] = p42[0]+p42[1];
assign p43[1] = p42[2]+p42[3];
assign p43[2] = p42[4]+p42[5];
assign p43[3] = p42[6]+p42[7];

assign p44[0] = p43[0]+p43[1];
assign p44[1] = p43[2]+p43[3];

assign Out4 = p44[0]+p44[1];

endmodule