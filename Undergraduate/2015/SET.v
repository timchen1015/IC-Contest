module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy;
output reg valid;
output reg [7:0] candidate;

reg [3:0] x1, y1, x2, y2, r1, r2, x_current, y_current;
reg signed [4:0] xa, ya, xb, yb;    //max 8 min -7
reg [7:0]tempA, tempB;              //max 128
reg signed [7:0]checkA, checkB;     //min -64
reg inA, inB;
reg [1:0]curr_mode;                 //0(inA) 1(union) 2(relative complement)


//combinational logic
always @(*) begin
    xa = x_current - x1;
    ya = y_current - y1;
    xb = x_current - x2;
    yb = y_current - y2;
    tempA = (xa * xa) + (ya * ya);
    tempB = (xb * xb) + (yb * yb);
    checkA = r1 * r1 -tempA;
    checkB = r2 * r2 - tempB;
    inA = ~checkA[7];
    inB = ~checkB[7];
end

//sequential logic
always @(posedge clk or posedge rst) begin
    if (rst) begin
        x_current <= 4'd1;
        y_current <= 4'd1;
        busy <= 1'b0;
        valid <= 1'b0;
        candidate <= 8'b0;
    end
    else begin
        if(~busy) begin
            if(en) begin
                x1 <= central[23:20];
                y1 <= central[19:16];
                x2 <= central[15:12];
                y2 <= central[11:8];
                r1 <= radius[11:8];
                r2 <= radius[7:4];
                curr_mode <= mode;
                busy <= 1'b1;
                x_current <= 4'd1;
                y_current <= 4'd1;
                candidate <= 8'b0;
                valid <= 1'b0;
            end
            else valid <= 1'b0;
        end
        else begin
            if(curr_mode == 2'b00) begin
                if(inA) begin
                    candidate <= candidate + 1;
                end
            end
            else if(curr_mode == 2'b01) begin
                if(inA & inB) begin
                    candidate <= candidate + 1;
                end
            end
            else begin                              //2'b10
                if(inA ^ inB) begin
                    candidate <= candidate + 1;
                end
            end
            if(x_current == 4'd8) begin
                if(y_current == 4'd8) begin
                    valid <= 1'b1;
                    busy <= 1'b0;
                    x_current <= 4'd1;
                    y_current <= 4'd1;
                end
                else begin
                    y_current <= y_current + 1;
                    x_current <= 4'd1;
                end
            end
            else begin 
                x_current <= x_current + 1;
            end
        end   
    end
end



endmodule
