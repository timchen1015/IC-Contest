`timescale 1ns/10ps
module geofence (clk, reset, X, Y, valid, is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
output reg valid;
output reg is_inside;

reg [3:0]cs, ns;
parameter IDLE = 1, READ = 2, CROSS_1 = 3, CROSS_2 = 4, CROSS_JUDGE = 5, EVALUATE_1 = 6, EVALUATE_2 = 7, EVALUATE_JUDGE = 8, OUTPUT = 9, WAIT = 10;

reg [9:0]x[6:0];
reg [9:0]y[6:0];
reg [2:0]read_counter, sort_counter, sort_boundary, evalutate_counter;
reg  [9:0]fst_1, fst_2, sec_1, sec_2;
reg [20:0]save_product;


wire signed[10:0]first_term = fst_1 - fst_2;
wire signed[10:0]second_term = sec_1 - sec_2;
wire signed [20:0]product = first_term * second_term;

wire signed[20:0]cross_product = save_product - product;   

wire cross_product_is_negative = (cross_product < 0);
always @(*) begin
    case (cs)
        IDLE: begin
            ns = READ;
        end
        READ: begin
            if(read_counter < 6) begin
                ns = READ;
            end
            else begin
                ns = CROSS_1;
            end
        end
        CROSS_1:ns = CROSS_2;
        CROSS_2:ns = CROSS_JUDGE;
        CROSS_JUDGE:ns = (sort_boundary == 1)?EVALUATE_1:CROSS_1;
        EVALUATE_1:ns = EVALUATE_2;
        EVALUATE_2:ns = EVALUATE_JUDGE;
        EVALUATE_JUDGE:ns = (evalutate_counter == 5)?OUTPUT:EVALUATE_1;
        OUTPUT:ns = WAIT;
        WAIT:ns = IDLE;
        default: ns = IDLE;

    endcase
end

always @(posedge clk or posedge reset) begin
    if(reset) cs <= IDLE;
    else cs <= ns;
end

always @(posedge clk or posedge reset) begin
    if(reset) begin
        valid <= 0;
        is_inside <= 1;
    end
    else begin
        case(cs)
            IDLE: begin
                x[6] <= X;
                y[6] <= Y;
                read_counter <= 0;
                valid <= 0;

            end
            READ: begin
                if (read_counter < 6) begin
                    x[read_counter] <= X;
                    y[read_counter] <= Y;
                    read_counter <= read_counter + 1;
                end
                else begin
                    read_counter <= 0;
                    sort_counter <= 0;
                    sort_boundary <= 4;
                    evalutate_counter <= 0;
                end
            end

            CROSS_1: begin
                fst_1 <= x[sort_counter];
                fst_2 <= x[0];
                sec_1 <= y[sort_counter + 1];
                sec_2 <= y[0];
            end
            CROSS_2: begin
                fst_1 <= x[sort_counter + 1];
                fst_2 <= x[0];
                sec_1 <= y[sort_counter];
                sec_2 <= y[0];
                save_product <= product;
            end
            CROSS_JUDGE: begin
                if (cross_product_is_negative)begin
                    x[sort_counter] <= x[sort_counter + 1];
                    y[sort_counter] <= y[sort_counter + 1];
                    x[sort_counter + 1] <= x[sort_counter];
                    y[sort_counter + 1] <= y[sort_counter];
                end
                else if(sort_counter == sort_boundary)begin
                    sort_boundary <= sort_boundary - 1;
                    sort_counter <= 1;
                end
                else begin
                    sort_counter <= sort_counter + 1;
                end
                if(sort_boundary == 1)begin
                    
                    is_inside <= 1;
                end
            end
            EVALUATE_1:begin
                fst_1 <= x[6];
                fst_2 <= x[evalutate_counter]; 
                sec_1 <= y[evalutate_counter];
                sec_2 <= (evalutate_counter == 5) ? y[0] : y[evalutate_counter + 1];
            end
            EVALUATE_2:begin
                fst_1 <= x[evalutate_counter];
                fst_2 <= (evalutate_counter == 5) ? x[0] : x[evalutate_counter + 1];
                sec_1 <= y[6];
                sec_2 <= y[evalutate_counter];
                save_product <= product;
            end
            EVALUATE_JUDGE:begin
                evalutate_counter <= evalutate_counter + 1;
                if(cross_product_is_negative)begin
                    is_inside <= 0;
                end
            end
            OUTPUT:begin
                valid <= 1;
                evalutate_counter <= 0;

            end
            WAIT:begin
                valid <= 0;
            end
        endcase
       end
end
endmodule