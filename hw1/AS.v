module AS(sel, A, B, S, O);
input [3:0] A, B;
input sel;
output [3:0] S;
output O;


genvar i,j;
wire [3:0] complement;
wire [3:0] addend;
wire carry[0:4];
wire tmp[0:3];
wire and_tmp1[0:3];
wire and_tmp2[0:3];

assign complement = ~B ;
assign addend = (sel) ? complement : B;
assign carry[0] = sel;

xor x3(O,carry[4],carry[3]);
generate 
    for(i=0;i<4;i=i+1) begin
        xor x1(tmp[i],A[i],addend[i]);
        xor x2(S[i],tmp[i],carry[i]);
    end
endgenerate

generate 
    for(j=0;j<4;j=j+1) begin
        and a1(and_tmp1[j],tmp[j],carry[j]);
        and a2(and_tmp2[j],A[j],addend[j]);
        or o1(carry[j+1],and_tmp1[j],and_tmp2[j]);
    end
endgenerate


endmodule
