`timescale 1ns/10ps
module RC4(clk,rst,key_valid,key_in,plain_read,plain_in_valid,plain_in,plain_write,plain_out,cipher_write,cipher_out,cipher_read,cipher_in,cipher_in_valid,done);
    input clk,rst;
    input key_valid,plain_in_valid,cipher_in_valid;
    input [7:0] key_in,cipher_in,plain_in;
    output done;
    output plain_write,cipher_write,plain_read,cipher_read;
    output [7:0] cipher_out,plain_out;

parameter STATE_IDLE = 3'b0,
          STATE_KEY  = 3'b1,
          STATE_FIN  = 3'b10,
          STATE_PLA  = 3'b11,
          STATE_CIP  = 3'b100;

reg [2:0] state;
reg [2:0] nxt_state;
reg [7:0] key[31:0];
reg [7:0] box[63:0];
reg [5:0] counter;
reg key_valid_latch;
reg box_ready;
reg latch_64;
reg plain_read;
reg plain_write;
reg plain_ready;
reg cnt;
reg done;
reg cipher_write;
reg [7:0] cipher_out;
reg cipher_read;
wire key_ready;
wire box_activate;
reg [5:0] box_index;
reg [7:0]plain_out;
wire [5:0] key_source;
wire [5:0] box_index_cmp;
wire [5:0] index_i;
wire [5:0] index_j;
wire [5:0] mul_index;
wire [5:0] final_index;
wire first_plain;
wire first_cipher;
reg [5:0] index_j_reg;
reg plain_ready_reg;
reg cipher_ready_reg;
reg cnt_write;
reg cipher_ready;
wire same_i;
wire same_j;
reg cnt_cipher;
reg plain_fin_reg;
reg plain_fin;

integer i;

assign key_ready = key_valid_latch & key_valid;
assign box_index_cmp = box_index + box[counter][5:0] + key_source; 
assign key_source = (box_ready)? key[0][5:0] : key_in[5:0];
assign box_activate = key_ready | box_ready;
assign index_i = counter + 6'b1;
assign index_j = index_j_reg + box[index_i]; 
assign mul_index = box[index_i] + box[index_j];
assign first_plain = plain_ready & ~plain_ready_reg;
assign first_cipher = cipher_ready & ~cipher_ready_reg;
assign same_i = mul_index == index_i;
assign same_j = mul_index == index_j;
assign final_index = (same_i)? index_j:
                     (same_j)? index_i:
                               mul_index;


always@(posedge clk or posedge rst) begin
    if(rst)
        state <= STATE_IDLE;
    else 
        state <= nxt_state;
end

always@(*) begin
    case(state)
        STATE_IDLE: nxt_state = (key_ready)?STATE_KEY:STATE_IDLE;
        STATE_KEY : nxt_state = ~(counter == 6'b111111)?STATE_KEY:
                                 (plain_fin_reg)? STATE_CIP:STATE_PLA;
        STATE_PLA : nxt_state = (plain_in_valid)?STATE_PLA:STATE_KEY;
        STATE_CIP : nxt_state = (cipher_in_valid)?STATE_CIP:STATE_FIN;
        STATE_FIN : nxt_state = STATE_IDLE;
        default   : nxt_state = STATE_FIN;
    endcase
end

always@(*) begin
    box_ready = 1'b0;
    plain_ready = 1'b0;
    plain_read = 1'b0;
    plain_write = 1'b0;
    done = 1'b0;
    cipher_read = 1'b0;
    cipher_write = 1'b0;
    cipher_ready = 1'b0;
    plain_fin = 1'b0;
    case(state)
        STATE_KEY: begin
            box_ready = counter[5] | plain_fin_reg;
        end
        STATE_PLA: begin
            plain_read = 1'b1;
            plain_ready = 1'b1;
            cipher_write = cnt_write;
            plain_fin = ~plain_in_valid;
        end
        STATE_CIP: begin
            cipher_read = 1'b1;
            cipher_ready = 1'b1;
            plain_write = cnt_cipher;
        end
        STATE_FIN: begin
            done = 1'b1;
        end
    endcase
end

always@(posedge clk) begin
    plain_out = cipher_in ^ box[final_index];
    cipher_out = plain_in ^ box[final_index];
end

always@(posedge clk or posedge rst) begin
    if(rst) begin
        key_valid_latch <= 1'b0;
        counter <= 6'b0;
        box_index <= 6'b0;
        index_j_reg <= 6'b0;
        plain_ready_reg <= 1'b0;
        cipher_ready_reg <= 1'b0;
        cnt_write <= 1'b0;
        cnt_cipher <= 1'b0;
        plain_fin_reg <= 1'b0;
    end
    else begin
        key_valid_latch <= key_valid;
        counter <=(box_activate|(plain_ready & plain_in_valid) | cipher_ready)? counter + 6'b1:6'b0;
        box_index <=(box_activate)?box_index_cmp[5:0]:6'b0;
        index_j_reg <= (plain_ready & ~plain_in_valid)?6'b0:(plain_ready | cipher_ready)?index_j : index_j_reg;
        plain_ready_reg <= plain_ready;
        cipher_ready_reg <= cipher_ready;
        cnt_write <= (cnt_write | first_plain); 
        cnt_cipher <= (cnt_cipher | first_cipher);
        plain_fin_reg <= (plain_fin_reg | plain_fin);
    end
end

always@(posedge clk) begin
    key[31] <= (key_ready)? key_in:
               (box_ready)? key[0]:
                            key[31];
    for(i=31;i>0;i=i-1) 
        key[i-1] <= (box_activate)?key[i] :  key[i-1];
end

always@(posedge clk or posedge rst) begin
    if(rst) begin
        for(i=0;i<64;i=i+1)
            box[i] <= i;
    end
    else if(plain_ready & ~plain_in_valid) begin
        for(i=0;i<64;i=i+1)
            box[i] <= i;
    end
    else if (box_activate) begin
        box[counter] <= box[box_index_cmp];
        box[box_index_cmp] <= box[counter];
    end
    else if(plain_ready  | cipher_ready) begin
        box[index_i] <= box[index_j];
        box[index_j] <= box[index_i];
    end
end

endmodule
