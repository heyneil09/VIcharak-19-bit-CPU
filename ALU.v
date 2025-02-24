module ALU( input [18:0] a,b,
input [4:0] opcode,
input [9:0] immediate,
output reg [18:0] result
);

always@(*)
begin 
case(opcode)

5'b00000 : result = a+b;
5'b00001 : result = a-b;
5'b00010 : result = a*b;
5'b00011 : result = a/b;
5'b00100 : result = a&b;
5'b00101 : result = a|b;
5'b00110 : result = ~a;
5'b00111 : result = a^b;
5'b01000 : result = a*b +result ;
5'b01001 : result = a+1;
5'b01010 : result = a-1;
5'b01011 : result = (a+b)>>1;
5'b01100 : result = (a==b)?1:0;
5'b01101 : result = (a!=b)?1:0;
5'b01110 : result = a+{{8{immediate[9]}},immediate};
5'b01111 : result = a-{{8{immediate[9]}},immediate};
5'b10000 : result = a&{{8{immediate[9]}},immediate};
5'b10001 : result = a|{{8{immediate[9]}},immediate};

default : result = 0 ;
endcase
end 
endmodule