module lcd_ctrl(clk, reset, datain, cmd, cmd_valid, dataout, output_valid, busy);
input           clk;
input           reset;
input   [7:0]   datain;
input   [2:0]   cmd;
input           cmd_valid;
output  reg [7:0]   dataout;
output  reg        output_valid;
output  reg        busy;

//state
parameter Reflash = 0;
parameter LoadData = 1;
parameter ShiftRight = 2;
parameter ShiftLeft  = 3;
parameter ShiftUp = 4;
parameter ShiftDown = 5;
parameter ReadCmd = 6;

//registers
reg [2 : 0] state, nextstate;
reg [7 : 0] img [35 : 0];
reg [2 : 0] origin_x, origin_y;
reg [1 : 0] x, y;
reg [3 : 0] count_out;


//state transition
always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= ReadCmd;
        busy <= 0;
        x <= 0;
        y <= 0;
        origin_x <= 0;
        origin_y <= 0;
        count_out <= 0;
		output_valid <= 0;
    end
    else begin
        state <= nextstate;
        case(state)
            ReadCmd: begin
                output_valid <= 0;
                busy <= 1;
                case(cmd)
                    Reflash: begin              
                    end
                    LoadData: begin
                        origin_x <= 0;
                        origin_y <= 0;
                    end
                    ShiftRight: begin
                        if(!(origin_x == 4 || origin_x == 5 || origin_x == 3)) begin
                            origin_x <= origin_x + 1;
                        end
                    end
                    ShiftLeft: begin
                        if(origin_x != 0) begin
                            origin_x <= origin_x - 1;
                        end    
                    end
                    ShiftUp: begin
                        if(origin_y != 0) begin
                            origin_y <= origin_y - 1;
                        end
                    end
                    ShiftDown: begin
                        if(!(origin_y == 4 || origin_y == 5 || origin_y == 3)) begin
                            origin_y <= origin_y + 1;
                        end
                    end

                endcase
            end
            LoadData: begin
                if(origin_x == 5 && origin_y == 5) begin        //6*6 finish
                    origin_x <= 2;
                    origin_y <= 2;
                    busy <= 0;
                end
                else if(origin_x == 5) begin                    //row  finish
                    origin_x <= 0;
                    origin_y <= origin_y + 1;
                    output_valid <= 0;
                end
                else begin
                    origin_x <= origin_x + 1;
                    if(origin_x > 1 && origin_x < 5 && origin_y > 1 && origin_y < 5) begin
                        dataout <= datain;
                        output_valid <= 1;
                    end
                    else begin
                        output_valid <= 0;
                    end
                end
                img[origin_y * 6 + origin_x] <= datain;
            end
            default: begin
                if(count_out == 8) begin
                    busy <= 0;
                    count_out <= 0;
                    origin_x <= origin_x - 2;
                    origin_y <= origin_y - 2;
                end
                else begin
                    if (count_out == 2 || count_out == 5) begin
                        origin_x <= origin_x - 2;
                        origin_y <= origin_y + 1;
                    end
                    else begin
                        origin_x <= origin_x + 1;
                    end
                    count_out <= count_out + 1;
                end
                dataout <= img[origin_y * 6 + origin_x];
                output_valid <= 1;
            end
        endcase    
    end
end

//FSM
//ReadCmd, Load_Data, Shift_Right, Shift_Down, Shift_Left, Shift_Up
always @(*) begin
    case (state)
        ReadCmd: begin
            case (cmd)
                Reflash: nextstate <= ShiftRight;
                LoadData: nextstate <= LoadData;
                ShiftRight: nextstate <= ShiftRight;
                ShiftLeft: nextstate <= ShiftLeft;
                ShiftUp: nextstate <= ShiftUp;
                ShiftDown: nextstate <= ShiftDown;
                default: nextstate <= ShiftRight;
            endcase
        end
        LoadData: begin
            if(origin_x == 5 && origin_y == 5) nextstate <= ReadCmd;
            else nextstate <= LoadData;
        end
        default: begin
            if(count_out == 8) nextstate <= ReadCmd;
            else nextstate <= ShiftRight;
        end
    endcase
end

                                                                                     
endmodule
