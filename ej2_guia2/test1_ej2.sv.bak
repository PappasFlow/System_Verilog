module test1_ej2();

logic clk;
logic [7:0] dataR0, dataR1, dataR2, dataR3, dataR5;
logic [3:0] control;
//integer i;
//logic [35:0] test_vector [4:0];

ej2 test(clk, control[0], control[1], control[2], 
			control[3], dataR0, dataR1, dataR2, dataR3, dataR5);

initial begin 
control = 4'b0001; //T3 = 0, T2 = 0, T1 = 0, T0 = 1
dataR0 = 8'b00001010;
dataR1 = 8'b00001111;
dataR2 = 8'b11110000;
dataR3 = 8'b11111111;
clk = 0;
#10; //delay
clk = 1;
#10;
control = 4'b0010; //T3 = 0, T2 = 0, T1 = 1, T0 = 0
clk = 0;
#10; //delay
clk = 1;
#10;
control = 4'b0100; //T3 = 0, T2 = 1, T1 = 0, T0 = 0
clk = 0;
#10; //delay
clk = 1;
#10;
control = 4'b1000; //T3 = 1, T2 = 0, T1 = 0, T0 = 0
clk = 0;
#10; //delay
clk = 1;
#10;
control = 4'b0011; //T3 = 0, T2 = 0, T1 = 1, T0 = 1
clk = 0;
#10; //delay
clk = 1;
#10;

end
endmodule