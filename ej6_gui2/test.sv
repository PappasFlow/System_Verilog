module testbench1();
	logic [3:0] A,B,s;
	logic [2:0] H;
		alu test(A,B,H,s);
	 initial begin 
		 A=4'b0001;B=4'b0010;
		 H=3'b000;#10;
		 assert(s===4'b0011) else $error("A+B failed");
		 H=001;#10;
		 assert(s===4'b0100) else $error("A+B+1 failed");
		 H=010;#10;
		 assert(s===4'b0001) else $error("A failed");
		 H=011;#10;
		 assert(s===4'b0010) else $error("A+1 failed");
		 H=100;#10;
		 assert(s===4'b1101) else $error("!B failed");
		 H=101;#10;
		 assert(s===4'b1110) else $error("!B+1 failed");
		 H=110;#10;
		 assert(s===4'b1110) else $error("A+!B failed");
		 H=111;#10;
		 assert(s===4'b1111) else $error("A+!B+1 failed");
	 end
 endmodule
	 
	