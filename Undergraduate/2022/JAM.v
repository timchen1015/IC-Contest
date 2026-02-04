module JAM (
input CLK,
input RST,
output  [2:0] W,
output  [2:0] J,
input [6:0] Cost,
output  reg [3:0] MatchCount,
output reg [9:0] MinCost,
output  Valid );


parameter [3:0] START = 4'd0, 
                IDLE = 4'd1,
                CAL1 = 4'd2,            //find left switch point
                CAL2 = 4'd3,            //find right switch point
                CAL3 = 4'd4,            //switch
                CAL4 = 4'd5,            //reverse list
                PREPARE_COST = 4'd6,    //set W,J 1 cycle before
                GET_COST = 4'd7,        //calculate cost
                CHECK_DONE = 4'd8,       //update min cost and check done
                DONE = 4'd9;   

reg [3:0]state, next_state;
reg [2:0]left, right, check_switch_point, switch_point, switch_value;
reg [2:0]temp_seq[7:0];
reg [2:0]people_cnt, worker_index;       //count people in cost
reg [15:0]ans_cnt;                      //count ans
reg [9:0]temp_cost;

always @(posedge CLK or posedge RST) begin
    if(RST) begin
        state <= START;
    end    
    else begin
        state <= next_state;
    end 
end

//FSM
always @(*) begin
    case(state)
        START: next_state = PREPARE_COST;
        IDLE: next_state = CAL1;
        CAL1: begin
            if(temp_seq[right] > temp_seq[left]) next_state = CAL2;
            else next_state = CAL1;
        end
        CAL2: begin
            if(check_switch_point == 0) next_state = CAL3;
            else next_state = CAL2;
        end
        CAL3: next_state = CAL4;
        CAL4: next_state = PREPARE_COST;
        PREPARE_COST: next_state = GET_COST;
        GET_COST: begin
            if(people_cnt == 3'd7) next_state = CHECK_DONE;
            else next_state = GET_COST;
        end
        CHECK_DONE: begin
            if(ans_cnt == 16'd40319) next_state = DONE;
            else next_state = IDLE;
        end
        DONE: next_state = DONE;
        default: next_state = START;
    endcase
end

//left, right, check_switch_point, switch_point, switch_value;
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        left <= 3'd0;
        right <= 3'd0;
        check_switch_point<= 3'd0;
        switch_point<= 3'd0;
        switch_value <= 3'd0;
    end
    else begin
        case(state)
            IDLE: begin
                left <= 3'd1;
                right <= 3'd0;
                check_switch_point <= 3'd0;
                switch_point<= 3'd0;
                switch_value <= 3'd0;
            end
            CAL1: begin
                left <= left + 1;
                right <= right + 1;
                check_switch_point <= right;
                switch_point <= right;
                switch_value <= temp_seq[left];
            end
            CAL2: begin
                //left, right, switch value
                switch_value <= switch_value;
                left <= left;
                right <= right;
                //update check switch point
                if(check_switch_point > 0) check_switch_point <= check_switch_point - 1;
                else check_switch_point <= check_switch_point;
                //update switch point
                if(temp_seq[check_switch_point] > switch_value && temp_seq[check_switch_point] < temp_seq[switch_point]) switch_point <= check_switch_point;
                else switch_point <= switch_point; 
            end
            GET_COST: begin
                left <= 3'd0;
                right <= 3'd0;
                switch_point<= 3'd0;
                check_switch_point <= 3'd0;
                switch_value <= 3'd0;
            end
            default: begin
                left <= left;
                right <= right;
                switch_point <= switch_point;
                check_switch_point <= check_switch_point;
                switch_value <= switch_value;
            end
        endcase
    end
end

//people_cnt, ans_cnt, worker_index
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        people_cnt <= 3'd0;
        ans_cnt <= 16'd0;
        worker_index <= 3'd0;
    end
    else begin
        case(state)
            CHECK_DONE: begin
                ans_cnt <= ans_cnt + 1;
                people_cnt <= 3'd0; 
                worker_index <= 3'd0;
            end
            PREPARE_COST : worker_index <= worker_index + 1;
            GET_COST: begin
                ans_cnt <= ans_cnt;
                people_cnt <= people_cnt + 1;
                worker_index <= worker_index + 1;
            end
            default: begin
                ans_cnt <= ans_cnt;
                people_cnt <= people_cnt;
                worker_index <= worker_index;
            end
        endcase
    end
end

assign W = (state == PREPARE_COST || state == GET_COST) ? worker_index : 3'd0;
assign J = (state == PREPARE_COST || state == GET_COST) ? temp_seq[worker_index] : 3'd0;
assign Valid = (state == DONE) ? 1'd1 : 1'd0;

//temp_cost
always @(posedge CLK or posedge RST)begin
    if(RST) begin
        temp_cost <= 10'd0;
    end
    else begin
        if(state == GET_COST) temp_cost <= temp_cost + Cost;
        else if(state == IDLE) temp_cost <= 10'd0;
        else temp_cost <= temp_cost; 
    end
end

//MinCost, Matchcount
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        MinCost <= 10'd1023;
        MatchCount <= 4'd1;
    end
    else begin
        if(state == CHECK_DONE && temp_cost < MinCost) begin
            MinCost <= temp_cost;  
            MatchCount <= 4'd1;
        end
        else if(state == CHECK_DONE && temp_cost == MinCost) MatchCount <= MatchCount + 1;
    end
end

//temp_seq
integer i;
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        for(i = 0; i < 8; i = i + 1) begin
            temp_seq[i] <= 3'd7 - i;
        end
    end
    else begin
        case(state)
            CAL3: begin
                temp_seq[right] <= temp_seq[switch_point];
                temp_seq[switch_point] <= temp_seq[right];
            end
            CAL4: begin
                for(i = 0; i < (right>>1); i = i + 1) begin
                    temp_seq[i] <= temp_seq[right - i - 1];
                    temp_seq[right - i - 1] <= temp_seq[i];
                end
            end
            //default: temp_seq <= temp_seq;
        endcase
    end
end

endmodule


