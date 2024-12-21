module multiple(
    W1,
    W2,
    W3,
    W4,
    I,   

    k1,
    k2,
    k3,
    k4
);

input            [3:0]W1[0:31];
input            [3:0]W2[0:31];
input            [3:0]W3[0:31];
input            [3:0]W4[0:31]; 
input            [31:0]I; 


output           [3:0]k1[0:31];
output           [3:0]k2[0:31];
output           [3:0]k3[0:31];
output           [3:0]k4[0:31];
//multiple
//W1


assign k1[0]=I[0]*W1[0];
assign k1[1]=I[1]*W1[1];
assign k1[2]=I[2]*W1[2];
assign k1[3]=I[3]*W1[3];
assign k1[4]=I[4]*W1[4];
assign k1[5]=I[5]*W1[5];
assign k1[6]=I[6]*W1[6];
assign k1[7]=I[7]*W1[7];
assign k1[8]=I[8]*W1[8];
assign k1[9]=I[9]*W1[9];
assign k1[10]=I[10]*W1[10];
assign k1[11]=I[11]*W1[11];
assign k1[12]=I[12]*W1[12];
assign k1[13]=I[13]*W1[13];
assign k1[14]=I[14]*W1[14];
assign k1[15]=I[15]*W1[15];
assign k1[16]=I[16]*W1[16];
assign k1[17]=I[17]*W1[17];
assign k1[18]=I[18]*W1[18];
assign k1[19]=I[19]*W1[19];
assign k1[20]=I[20]*W1[20];
assign k1[21]=I[21]*W1[21];
assign k1[22]=I[22]*W1[22];
assign k1[23]=I[23]*W1[23];
assign k1[24]=I[24]*W1[24];
assign k1[25]=I[25]*W1[25];
assign k1[26]=I[26]*W1[26];
assign k1[27]=I[27]*W1[27];
assign k1[28]=I[28]*W1[28];
assign k1[29]=I[29]*W1[29];
assign k1[30]=I[30]*W1[30];
assign k1[31]=I[31]*W1[31]; 

assign k2[0]=I[0]*W2[0];
assign k2[1]=I[1]*W2[1];
assign k2[2]=I[2]*W2[2];
assign k2[3]=I[3]*W2[3];
assign k2[4]=I[4]*W2[4];
assign k2[5]=I[5]*W2[5];
assign k2[6]=I[6]*W2[6];
assign k2[7]=I[7]*W2[7];
assign k2[8]=I[8]*W2[8];
assign k2[9]=I[9]*W2[9];
assign k2[10]=I[10]*W2[10];
assign k2[11]=I[11]*W2[11];
assign k2[12]=I[12]*W2[12];
assign k2[13]=I[13]*W2[13];
assign k2[14]=I[14]*W2[14];
assign k2[15]=I[15]*W2[15];
assign k2[16]=I[16]*W2[16];
assign k2[17]=I[17]*W2[17];
assign k2[18]=I[18]*W2[18];
assign k2[19]=I[19]*W2[19];
assign k2[20]=I[20]*W2[20];
assign k2[21]=I[21]*W2[21];
assign k2[22]=I[22]*W2[22];
assign k2[23]=I[23]*W2[23];
assign k2[24]=I[24]*W2[24];
assign k2[25]=I[25]*W2[25];
assign k2[26]=I[26]*W2[26];
assign k2[27]=I[27]*W2[27];
assign k2[28]=I[28]*W2[28];
assign k2[29]=I[29]*W2[29];
assign k2[30]=I[30]*W2[30];
assign k2[31]=I[31]*W2[31]; 

assign k3[0]=I[0]*W3[0];
assign k3[1]=I[1]*W3[1];
assign k3[2]=I[2]*W3[2];
assign k3[3]=I[3]*W3[3];
assign k3[4]=I[4]*W3[4];
assign k3[5]=I[5]*W3[5];
assign k3[6]=I[6]*W3[6];
assign k3[7]=I[7]*W3[7];
assign k3[8]=I[8]*W3[8];
assign k3[9]=I[9]*W3[9];
assign k3[10]=I[10]*W3[10];
assign k3[11]=I[11]*W3[11];
assign k3[12]=I[12]*W3[12];
assign k3[13]=I[13]*W3[13];
assign k3[14]=I[14]*W3[14];
assign k3[15]=I[15]*W3[15];
assign k3[16]=I[16]*W3[16];
assign k3[17]=I[17]*W3[17];
assign k3[18]=I[18]*W3[18];
assign k3[19]=I[19]*W3[19];
assign k3[20]=I[20]*W3[20];
assign k3[21]=I[21]*W3[21];
assign k3[22]=I[22]*W3[22];
assign k3[23]=I[23]*W3[23];
assign k3[24]=I[24]*W3[24];
assign k3[25]=I[25]*W3[25];
assign k3[26]=I[26]*W3[26];
assign k3[27]=I[27]*W3[27];
assign k3[28]=I[28]*W3[28];
assign k3[29]=I[29]*W3[29];
assign k3[30]=I[30]*W3[30];
assign k3[31]=I[31]*W3[31]; 

assign k4[0]=I[0]*W4[0];
assign k4[1]=I[1]*W4[1];
assign k4[2]=I[2]*W4[2];
assign k4[3]=I[3]*W4[3];
assign k4[4]=I[4]*W4[4];
assign k4[5]=I[5]*W4[5];
assign k4[6]=I[6]*W4[6];
assign k4[7]=I[7]*W4[7];
assign k4[8]=I[8]*W4[8];
assign k4[9]=I[9]*W4[9];
assign k4[10]=I[10]*W4[10];
assign k4[11]=I[11]*W4[11];
assign k4[12]=I[12]*W4[12];
assign k4[13]=I[13]*W4[13];
assign k4[14]=I[14]*W4[14];
assign k4[15]=I[15]*W4[15];
assign k4[16]=I[16]*W4[16];
assign k4[17]=I[17]*W4[17];
assign k4[18]=I[18]*W4[18];
assign k4[19]=I[19]*W4[19];
assign k4[20]=I[20]*W4[20];
assign k4[21]=I[21]*W4[21];
assign k4[22]=I[22]*W4[22];
assign k4[23]=I[23]*W4[23];
assign k4[24]=I[24]*W4[24];
assign k4[25]=I[25]*W4[25];
assign k4[26]=I[26]*W4[26];
assign k4[27]=I[27]*W4[27];
assign k4[28]=I[28]*W4[28];
assign k4[29]=I[29]*W4[29];
assign k4[30]=I[30]*W4[30];
assign k4[31]=I[31]*W4[31]; 
endmodule