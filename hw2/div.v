`timescale 1ns / 10ps
module div(out, in1, in2, dbz);
parameter width = 8;
input  	[width-1:0] in1; // Dividend
input  	[width-1:0] in2; // Divisor
output  [width-1:0] out; // Quotient
output dbz;


/********************************

You need to write your code at here

********************************/

genvar i;

wire [2*width:0] div[0:width];
wire [2*width:0] remainder[0:width];
wire [width-1:0] ans[0:width];
wire [2*width:0]sub[0:width];

assign dbz = ~(|in2);

assign sub[0] = {9'b0,in1} - {1'b0,in2,8'b0};//{8'b0,in1} >= {in2,8'b0};
assign remainder[0] = sub[0][16] ?{9'b0,in1}:sub[0]; //(sub[0]) ? ({8'b0,in1}-{in2,8'b0}):{8'b0,in1};
assign div[0] = {2'b0,in2,7'b0};
assign ans[0] = sub[0][16]?8'b0:8'b1;//sub[0] ? 8'b1:8'b0;

generate
    for(i=1;i<=width;i=i+1) begin : div_block
        assign sub[i] = remainder[i-1] - div[i-1];//remainder[i-1] >= div[i-1];
        assign remainder[i] = sub[i][16]?remainder[i-1]:sub[i];//(sub[i]) ? (remainder[i-1]-div[i-1]) : remainder[i-1];
        assign div[i] = div[i-1] >> 1;
        assign ans[i] = {ans[i-1][width-2:0],~sub[i][16]};
    end
endgenerate

assign out = ans[8];

endmodule
