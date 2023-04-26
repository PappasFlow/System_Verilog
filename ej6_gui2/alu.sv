
module alu #(parameter N=4)(
 input logic [N-1:0] A,B,
 input logic [2:0] H,
 output logic [N-1:0] s
);
	always_comb
		case(H)
			0: s=A+B;
			1: s=A+B+1;
			2: s=A;
			3: s=A+1;
			4: s=~B;
			5: s=~B+1;
			6: s=A+~B;
			7: s=A+~B+1;
		endcase
	

endmodule