parameter N = 4; //cantidad de bits unidad 

module unidad_corrimiento( 
 input signed [N-1:0] F, //input
 input logic [2:0] H, //sel operacion
 input logic [(N-1)/2:0]D, //cantidad de desplasamientos por ves 
 output logic [N-1:0] S //salida
 ); 
 
 always  @(F,H,D)
	case(H)
	 3'b001: S=F<<D; //shl
	 3'b010: S=F>>D; //shr
	 3'b011: S=N[1'b0]; //todo 0
	 3'b100: S={F,F}>>(N-D); //rol
	 3'b101: S={F,F}>>D; //ror
	 3'b110: S={F[N-1],F<<(D+1)}>>1; //asl
	 3'b111: S=F>>>D; //asr
	 default: S=F; //transferencia
   endcase
	
endmodule
