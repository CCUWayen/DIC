`timescale 1ns/10ps
module CS(Y, X, reset, clk);

input clk, reset; 
input 	[7:0] X;
output  [9:0] Y;

//--------------------------------------
//  \^o^/   Write your code here~  \^o^/
//--------------------------------------
parameter div = 18'b000111000111001000;

reg [7:0] buff[0:8];
reg [11:0]reg_sum;
reg flag[0:8];
//wire [12:0]ans;
wire [11:0]sum;
wire [29:0] avg;
wire tmp_flag[0:7];
wire [7:0] tmp_out[0:7];
integer i;


assign sum = reg_sum - {4'b0,buff[8]} + {4'b0,X}; 
assign avg = (sum * div); //>> 18;
assign Y = ({1'b0,reg_sum} + {1'b0,{tmp_out[7],3'b0}+{4'b0,tmp_out[7]}}) >>3;
cmp c1(flag[0],flag[1],buff[0],buff[1],tmp_out[0],tmp_flag[0]);
cmp c2(flag[2],flag[3],buff[2],buff[3],tmp_out[1],tmp_flag[1]);
cmp c3(flag[4],flag[5],buff[4],buff[5],tmp_out[2],tmp_flag[2]);
cmp c4(flag[6],flag[7],buff[6],buff[7],tmp_out[3],tmp_flag[3]);
cmp c5(tmp_flag[0],tmp_flag[1],tmp_out[0],tmp_out[1],tmp_out[4],tmp_flag[4]);
cmp c6(tmp_flag[2],tmp_flag[3],tmp_out[2],tmp_out[3],tmp_out[5],tmp_flag[5]);
cmp c7(tmp_flag[4],tmp_flag[5],tmp_out[4],tmp_out[5],tmp_out[6],tmp_flag[6]);
cmp c8(tmp_flag[6],flag[8],tmp_out[6],buff[8],tmp_out[7],tmp_flag[7]);

always@(posedge clk or posedge reset) begin
    if(reset)begin
        for(i=0;i<9;i=i+1) begin
            buff[i] <= 8'b0;
            flag[i] <= 1'b0;
        end
    end
    else begin
        buff[0] <= X;
        flag[0] <= X > avg[25:18];
        for(i=1;i<9;i=i+1) begin
            buff[i] <= buff[i-1];
            flag[i] <= buff[i-1] >avg[25:18];
        end
    end
end

always@(posedge clk or posedge reset) begin
    if(reset) begin
        reg_sum <= 12'b0;
    end
    else begin
        reg_sum <= sum;
    end
end


endmodule

module cmp(
    input valid1,
    input valid2,
    input [7:0] num1,
    input [7:0] num2,
    output reg [7:0] win,
    output valid 
);
wire lar = num1 > num2;
assign valid = valid1 & valid2;

always@(*) begin
    case({valid1,valid2})   
        2'b00:begin
            win = lar ? num1:num2;
        end
        2'b01:begin
            win = num1;
        end
        2'b10:begin
            win = num2;
        end
        2'b11:begin
            win = num1;
        end
    endcase
end
endmodule
