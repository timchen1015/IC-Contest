
`timescale 1ns/10ps

module  CONV(
	input		clk,
	input		reset,
	output		busy,	
	input		ready,	
			
	output reg  [11:0]iaddr,
	input 		[19:0]idata,	
	
	output reg	cwr,
	output		[11:0]caddr_wr,
	output		[19:0]cdata_wr,
	
	output reg 	crd,
	output reg	[11:0]caddr_rd,
	input 		[19:0]cdata_rd,
	
	output reg	[2:0]	csel,
	output [5:0]pos_row,
	output [5:0]pos_col
	);

	//kernel
	wire signed [19:0] kernel1 = 20'h0A89E;
	wire signed [19:0] kernel2 = 20'h092D5;
	wire signed [19:0] kernel3 = 20'h06D43;
	wire signed [19:0] kernel4 = 20'h01004;
	wire signed [19:0] kernel5 = 20'hF8F71;
	wire signed [19:0] kernel6 = 20'hF6E54;
	wire signed [19:0] kernel7 = 20'hFA6D7;
	wire signed [19:0] kernel8 = 20'hFC834;
	wire signed [19:0] kernel9 = 20'hFAC19;

	wire signed [19:0] bias = 20'h01310; 

	reg [11:0]pos;
	// wire [5:0]pos_row = pos[11:6];
	// wire [5:0]pos_col = pos[5:0];
	assign pos_row = pos[11:6];
	assign pos_col = pos[5:0];
	wire [11:0] pos1 = {pos_row - 6'd1, pos_col - 6'd1};
	wire [11:0] pos2 = {pos_row - 6'd1, pos_col};
	wire [11:0] pos3 = {pos_row - 6'd1, pos_col + 6'd1};
	wire [11:0] pos4 = {pos_row, pos_col - 6'd1};
	//wire [11:0] pos5 = {pos_row, pos_col};						//center
	wire [11:0] pos6 = {pos_row, pos_col + 6'd1};
	wire [11:0] pos7 = {pos_row + 6'd1, pos_col - 6'd1};
	wire [11:0] pos8 = {pos_row + 6'd1, pos_col};
	wire [11:0] pos9 = {pos_row + 6'd1, pos_col + 6'd1};



	wire pos_is_top_or_left = (pos_row == 6'd0) || (pos_col == 6'd0);
	wire pos_is_top_or_right = (pos_row == 6'd0) || (pos_col == 6'd63);
	wire pos_is_bottom_or_left = (pos_row == 6'd63) || (pos_col == 6'd0);
	wire pos_is_bottom_or_right = (pos_row == 6'd63) || (pos_col == 6'd63);
	wire pos_is_top = (pos_row == 6'd0);
	wire pos_is_bottom = (pos_row == 6'd63);
	wire pos_is_left = (pos_col == 6'd0);
	wire pos_is_right = (pos_col == 6'd63);


	//state
	reg [4:0]state, nextstate;
	parameter [4:0] START = 5'd0, IDLE1 = 5'd1, 
					CONV1 = 5'd2, CONV2 = 5'd3, CONV3 = 5'd4, CONV4 = 5'd5, CONV5 = 5'd6, CONV6 = 5'd7, CONV7 = 5'd8, CONV8 = 5'd9, CONV9 = 5'd10, RELU = 5'd11, WRITE_L0 = 5'd12, 
					IDLE2 = 5'd13, POOL1 = 5'd14, POOL2 = 5'd15, POOL3 = 5'd16, POOL4 = 5'd17, WRITE_L1 = 5'd18, DONE = 5'd19;

	always @(posedge clk or posedge reset) begin
		if(reset) begin
			state <= START; 
		end
		else begin
			state <= nextstate;
		end
	end

	always @(*) begin
		case(state)
			START: begin
				if(ready) nextstate = IDLE1;
				else nextstate = START;
 			end
			IDLE1: nextstate = CONV1;
			CONV1: nextstate = CONV2;
			CONV2: nextstate = CONV3;
			CONV3: nextstate = CONV4;
			CONV4: nextstate = CONV5;
			CONV5: nextstate = CONV6;
			CONV6: nextstate = CONV7;
			CONV7: nextstate = CONV8;
			CONV8: nextstate = CONV9;
			CONV9: nextstate = RELU;
			RELU: nextstate = WRITE_L0;
			WRITE_L0: nextstate = (pos == {6'd63, 6'd63}) ? IDLE2 : IDLE1;
			IDLE2: nextstate = POOL1;
			POOL1: nextstate = POOL2;
			POOL2: nextstate = POOL3;
			POOL3: nextstate = POOL4;
			POOL4: nextstate = WRITE_L1;
			WRITE_L1: nextstate = (pos == {6'd62, 6'd62}) ? DONE : IDLE2;
			DONE: nextstate = START;
			default: nextstate = START;
		endcase
	end

	//busy
	assign busy = (state == DONE || state == START) ? 1'b0 : 1'b1;

	//pos
	always @(posedge clk or posedge reset) begin
		if(reset) begin
			pos <= 12'd0;
		end
		else begin
			case(state)
				WRITE_L0: begin
					if(pos == {6'd63, 6'd63}) pos <= 12'd0;
					else if(pos_col == 6'd63) pos <= {pos_row + 6'd1, 6'd0};
					else pos <= {pos_row, pos_col + 6'd1};
				end
				WRITE_L1:begin
					if(pos == {6'd62, 6'd62}) pos <= 12'd0;
					else if(pos_col == 6'd62) pos <= {pos_row + 6'd2, 6'd0};
					else pos <= {pos_row, pos_col + 6'd2};
				end
				default: pos <= pos;
			endcase
		end
	end
	reg [9:0] max_count;
	//max_count
	always @(posedge clk or posedge reset) begin
		if(reset) begin
			max_count <= 10'd0;
		end
		else begin
			case(state)
				WRITE_L1: begin
					if(pos == {6'd62, 6'd62}) max_count <= 10'd0;
					else max_count <= max_count + 10'd1;
				end
				default: max_count <= max_count;
			endcase
		end
	end

	//idata
	//*
	always @(*) begin
		case(state)
			CONV1: iaddr <= pos1;
			CONV2: iaddr <= pos2;
			CONV3: iaddr <= pos3;
			CONV4: iaddr <= pos4;
			CONV5: iaddr <= pos;
			CONV6: iaddr <= pos6;
			CONV7: iaddr <= pos7;
			CONV8: iaddr <= pos8;
			CONV9: iaddr <= pos9;
			default: iaddr <= 12'd0;
		endcase
	end 

	wire signed[39:0] product;
	reg  signed[43:0] product_sum;
	reg signed [19:0]kernel;
	reg signed [19:0]gray_pixel;
	reg signed [19:0]max_pixel;

	//*
	always @(*) begin
		case(state)
			CONV1: kernel = kernel1;
			CONV2: kernel = kernel2;
			CONV3: kernel = kernel3;
			CONV4: kernel = kernel4;
			CONV5: kernel = kernel5;
			CONV6: kernel = kernel6;
			CONV7: kernel = kernel7;
			CONV8: kernel = kernel8;
			CONV9: kernel = kernel9;
			default: kernel = kernel1;
		endcase
	end

	//*
	always @(*) begin
		case(state)
			CONV1: gray_pixel = (pos_is_top_or_left) ? 20'd0 : idata;
			CONV2: gray_pixel = (pos_is_top) ? 20'd0 : idata;
			CONV3: gray_pixel = (pos_is_top_or_right) ? 20'd0 : idata;
			CONV4: gray_pixel = (pos_is_left) ? 20'd0 : idata;
			CONV5: gray_pixel = idata;
			CONV6: gray_pixel = (pos_is_right) ? 20'd0 : idata;
			CONV7: gray_pixel = (pos_is_bottom_or_left) ? 20'd0 : idata;
			CONV8: gray_pixel = (pos_is_bottom) ? 20'd0 : idata;
			CONV9: gray_pixel = (pos_is_bottom_or_right) ? 20'd0 : idata;
			default: gray_pixel = 20'd0;
		endcase
	end

	assign product = gray_pixel * kernel;

	//produc_sum
	always @(posedge clk or posedge reset) begin
		if(reset) begin
			product_sum <= 44'd0;
		end
		else begin
			case(state) 
				CONV1: product_sum <= product + {bias, 16'd0};					//product 32 bit fraction
				CONV2: product_sum <= product_sum + product;
				CONV3: product_sum <= product_sum + product;
				CONV4: product_sum <= product_sum + product;
				CONV5: product_sum <= product_sum + product;
				CONV6: product_sum <= product_sum + product;
				CONV7: product_sum <= product_sum + product;
				CONV8: product_sum <= product_sum + product;
				CONV9: product_sum <= product_sum + product;
				RELU: product_sum <= (product_sum[43]) ? 44'd0 : product_sum;
				default: product_sum <= 44'd0;
			endcase
		end
	end

	//caddr_rd
	//*
	always @(*) begin
		case(state)
			POOL1: caddr_rd <= pos;
			POOL2: caddr_rd <= pos6;
			POOL3: caddr_rd <= pos8;
			POOL4: caddr_rd <= pos9;
			default: caddr_rd <= 12'd0;
		endcase
	end

	always @(posedge clk or posedge reset) begin
		if(reset) begin
			max_pixel <= 20'd0;
		end
		else begin
			case(state)
				POOL1: max_pixel <= (cdata_rd > max_pixel) ? cdata_rd : max_pixel;
				POOL2: max_pixel <= (cdata_rd > max_pixel) ? cdata_rd : max_pixel;
				POOL3: max_pixel <= (cdata_rd > max_pixel) ? cdata_rd : max_pixel;
				POOL4: max_pixel <= (cdata_rd > max_pixel) ? cdata_rd : max_pixel;
				default: max_pixel <= 20'd0;
			endcase
		end
	end

	//cwr
	always @(*) begin
		if(state == WRITE_L0 || state == WRITE_L1) cwr = 1'b1;
		else cwr = 1'b0;
	end
	always@(*) begin
		crd = ~cwr;
	end

	//csel
	always @(*) begin
		if(state == WRITE_L1) csel = 3'b011;
		else csel = 3'b001;
	end
	
	//data: 1+3int 16float
	//product_sum: 1+7int 32float			[32]start to be int
	wire signed [19:0] conv_result = {product_sum[43], product_sum[34:16]}+product_sum[15];
	assign cdata_wr = (state == WRITE_L0) ? conv_result : max_pixel;
	assign caddr_wr = (state == WRITE_L0) ? pos : max_count;

endmodule




