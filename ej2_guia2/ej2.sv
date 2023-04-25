module ej2(input logic clk,
			  input logic T0,T1,T2,T3,
			  input logic [7:0] R0,R1,R2,R3,
			  output logic [7:0] R5);
			  
always_ff@(posedge clk)
	begin
	if(T0 & !T1 & !T2 & !T3) R5 <= R0;
	if(!T0 & T1 & !T2 & !T3) R5 <= R1;
	if(!T0 & !T1 & T2 & !T3) R5 <= R2;
	if(!T0 & !T1 & !T2 & T3) R5 <= R3;
	end
	endmodule 