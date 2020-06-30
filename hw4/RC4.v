`timescale 1ns/10ps
module RC4(clk,rst,key_valid,key_in,plain_read,plain_in_valid,plain_in,plain_write,plain_out,cipher_write,cipher_out,cipher_read,cipher_in,cipher_in_valid,done);
    input clk,rst;
    input key_valid,plain_in_valid,cipher_in_valid;
    input [7:0] key_in,cipher_in,plain_in;
    output reg done;
    output reg plain_write,cipher_write,plain_read,cipher_read;
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
reg [5:0] box_j_reg;
reg [7:0] plain_reg;
reg [7:0] cipher_reg;
wire [5:0] box_j;
reg key_valid_latch;
reg key_data_valid;
reg key_data_valid_latch;
reg key_shift;
reg plain_fin_reg;
reg box_activate;
reg restart;
reg plain_activate;
reg cipher_activate;
reg plain_fin;
wire [7:0] add_index;
wire [5:0]index_i;
wire [5:0]index_j;
reg [5:0]index_j_reg;
reg [5:0] final_index;
reg index_restart;
wire [5:0] f_index_i;
wire [5:0] f_index_j;
wire [7:0] data_i;
wire [7:0] data_j;
wire [7:0] final_data;
integer i;

assign box_j = box_j_reg + data_i + key[31];
assign index_i = counter + 6'b1;
assign index_j = index_j_reg + add_index[5:0]; 
assign add_index = data_i;
assign cipher_out = plain_reg ^ final_data;
assign plain_out = cipher_reg ^ final_data;
assign f_index_i = (box_activate) ? counter: index_i;
assign f_index_j = (box_activate) ? box_j:index_j;
assign data_i = box[f_index_i];
assign data_j = box[f_index_j];
assign final_data = box[final_index];

always@(posedge clk or posedge rst) begin
    if(rst)
        state <= STATE_IDLE;
    else 
        state <= nxt_state;
end

always@(*) begin
    case(state)
        STATE_IDLE: nxt_state = (key_data_valid)?STATE_KEY:STATE_IDLE;
        STATE_KEY : nxt_state = ~(counter == 6'b111111)?STATE_KEY:
                                 (plain_fin_reg)? STATE_CIP:STATE_PLA;
        STATE_PLA : nxt_state = (plain_in_valid)?STATE_PLA:STATE_KEY;
        STATE_CIP : nxt_state = (cipher_in_valid)?STATE_CIP:STATE_FIN;
        STATE_FIN : nxt_state = STATE_IDLE;
        default   : nxt_state = STATE_IDLE;
    endcase
end

always@(*) begin
    key_data_valid = key_valid & key_valid_latch;
    key_shift = 1'b0;
    box_activate = 1'b0;
    key_shift = 1'b0;
    done = 1'b0;
    plain_read = 1'b0;
    plain_activate = 1'b0;
    cipher_read = 1'b0;
    plain_fin = 1'b0;
    restart = 1'b0;
    cipher_activate = 1'b0;
    index_restart = 1'b0;
    case(state)
        STATE_KEY: begin
            box_activate = 1'b1;
            key_shift = (counter == 6'b11111) | counter[5] | plain_fin_reg;
            index_restart = (counter == 6'b111111) & plain_fin_reg;
        end
        STATE_PLA: begin
            plain_read = 1'b1;
            plain_activate = 1'b1;
            plain_fin = ~plain_in_valid;
            restart = ~plain_in_valid;
        end
        STATE_CIP: begin
            cipher_read = 1'b1;
            cipher_activate = 1'b1;
        end
        STATE_FIN: begin
            done = 1'b1;
        end
    endcase
end

always@(posedge clk or posedge rst) begin
    if(rst) begin
        key_valid_latch <= 1'b0;
        key_data_valid_latch <= 1'b0;
        box_j_reg <= 6'b0;
        plain_reg <= 8'b0;
        cipher_reg <= 8'b0;
        index_j_reg <= 6'b0;
        final_index <= 6'b0;
        cipher_write <= 1'b0;
        plain_fin_reg <= 1'b0;
        plain_write <= 1'b0;
    end
    else begin
        box_j_reg <=(restart)?6'b0:(box_activate)? box_j:box_j_reg;
        key_valid_latch <= key_valid;
        key_data_valid_latch <= key_data_valid;
        plain_reg <= plain_in;
        index_j_reg <=(index_restart)?6'b0:(plain_activate | cipher_activate)? index_j : index_j_reg;
        final_index <= add_index[5:0] +data_j;
        cipher_write <= (plain_activate)? plain_in_valid : 1'b0;
        plain_write <= (cipher_activate)? cipher_in_valid: 1'b0;
        plain_fin_reg <= (plain_fin_reg | plain_fin);
        cipher_reg <= cipher_in;
    end
end

always@(posedge clk) begin
    key[31] <= (key_data_valid)? key_in:
               (key_shift     )? key[0]: key[31];
    for(i=31;i>0;i=i-1) begin
        key[i-1] <= (box_activate)? key[i] : key[i-1];
    end
end

always@(posedge clk or posedge rst) begin 
    if(rst) begin
        for(i=0;i<64;i=i+1)
            box[i] <= i[7:0];
    end
    else if(restart) begin
        for(i=0;i<64;i=i+1)
            box[i] <= i[7:0];
    end
    else if(box_activate | plain_activate | cipher_activate) begin
        box[f_index_i] <= data_j;
        box[f_index_j] <= data_i;
    end
end

always@(posedge clk or posedge rst) begin
    if(rst)
        counter <= 6'b0;
    else if (restart | index_restart)
        counter <= 6'b0;
    else if (box_activate | key_shift | plain_activate | cipher_activate)
        counter <= counter + 6'b1;
end


endmodule
