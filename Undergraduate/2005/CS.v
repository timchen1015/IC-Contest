`timescale 1ns/10ps
/*
 * IC Contest Computational System (CS)
*/
module CS(Y, X, reset, clk);

input clk, reset; 
input [7:0] X;
output reg [9:0] Y;


reg [7 : 0]X_matrix [8 : 0];
reg [10 : 0]Sum;


always @(posedge clk or negedge reset) begin
	if(~reset) begin
		X_matrix[8] <= 0;
		X_matrix[7] <= 0;
		X_matrix[6]	<= 0;
		X_matrix[5]	<= 0;
		X_matrix[5] <= 0;
		X_matrix[4] <= 0;
		X_matrix[3] <= 0;
		X_matrix[2] <= 0;
		X_matrix[1] <= 0;
		X_matrix[0] <= 0;
		Sum <= 0;
	end else begin
		X_matrix[8] <= X_matrix[7];
		X_matrix[7] <= X_matrix[6];
		X_matrix[6] <= X_matrix[5];
		X_matrix[5] <= X_matrix[4];
		X_matrix[4] <= X_matrix[3];
		X_matrix[3] <= X_matrix[2];
		X_matrix[2] <= X_matrix[1];
		X_matrix[1] <= X_matrix[0];
		X_matrix[0] <= X;
		Sum <= Sum - X_matrix[8] + X;
	end
end


//reg [7 : 0]Xappr;
reg [8 : 0]Xappr;

always @(*) begin
	Xappr = 0;
	if((X_matrix[0] <= Sum / 9)  && (Xappr < X_matrix[0]))
		Xappr = X_matrix[0];
	if((X_matrix[1] <= Sum / 9)  && (Xappr < X_matrix[1]))
		Xappr = X_matrix[1];
	if((X_matrix[2] <= Sum / 9)  && (Xappr < X_matrix[2]))
		Xappr = X_matrix[2];
	if((X_matrix[3] <= Sum / 9)  && (Xappr < X_matrix[3]))
		Xappr = X_matrix[3];
	if((X_matrix[4] <= Sum / 9)  && (Xappr < X_matrix[4]))
		Xappr = X_matrix[4];
	if((X_matrix[5] <= Sum / 9)  && (Xappr < X_matrix[5]))
		Xappr = X_matrix[5];
	if((X_matrix[6] <= Sum / 9)  && (Xappr < X_matrix[6]))
		Xappr = X_matrix[6];
	if((X_matrix[7] <= Sum / 9)  && (Xappr < X_matrix[7]))
		Xappr = X_matrix[7];
	if((X_matrix[8] <= Sum / 9)  && (Xappr < X_matrix[8]))
		Xappr = X_matrix[8];
	
	Y = (Sum + ({Xappr, 3'b000} + Xappr)) >> 3;				//11bit + 11bit ?overflow, ??12bit

end
endmodule

