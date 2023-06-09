module test_unidad_corrimiento();

parameter N=4;

logic [N-1:0] F, S; //input
logic [2:0] H; //sel operacion
logic [(N-1)/2:0]D; //cantidad de desplasamientos por ves 

unidad_corrimiento test(F,H,D, S); //respeta el orden del modulo creado

initial begin //ejecuta linea a linea
//transferencia
F=4'b1100;
H=3'b000;
D=2'b01;
#50;

//todo cero
H=3'b011;
#50;

//shl
H=3'b001;
D=2'b01;
#50;
D=2'b10;
#50;
D=2'b11;
#50;

//shr
H=3'b010;
D=2'b01;
#50;
D=2'b10;
#50;
D=2'b11;
#50;

//rol
H=3'b100;
D=2'b01;
#50;
D=2'b10;
#50;
D=2'b11;
#50;

//ror
H=3'b101;
D=2'b01;
#50;
D=2'b10;
#50;
D=2'b11;
#50;

//asl
H=3'b110;
D=2'b01;
#50;
D=2'b10;
#50;
D=2'b11;
#50;

//asr
H=3'b111;
D=2'b01;
#50;
D=2'b10;
#50;
D=2'b11;
#50;


F=4'b0110;//otro F

//asl
H=3'b110;
D=2'b01;
#50;
D=2'b10;
#50;
D=2'b11;
#50;

//asr
H=3'b111;
D=2'b01;
#50;
D=2'b10;
#50;
D=2'b11;
#50;

end
endmodule