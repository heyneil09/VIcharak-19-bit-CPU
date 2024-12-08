module ControlUnit(
input[4:0] opcode,
output reg regwr,memrd,memwr,branch,jump,call,ret);

always@(*) 
begin 
case(opcode)
5'b00000,5'b00001,5'b00010,5'b00011,5'b00100,5'b00101,5'b00110,5'b00111,5'b01000,5'b01001,5'b01010,5'b01011,5'b01100,5'b01101,5'b01110,5'b01111,5'b10000,5'b10001 : begin 

regwr =1;
memwr =0;
memrd =0;
branch=0;
jump=0;
call=0;
ret=0;
end

5'b01110: begin 
regwr =0;
memwr =0;
memrd =0;
branch=0;
call=0;
ret=0;
jump=1;
end

5'b01111: begin //bRANCH NOT EQ
regwr =0;
memwr =0;
memrd =0;
branch=1;
call=0;
ret=0;
jump=0;
end
5'b10000: begin //BRANCH EQ
regwr =0;
memwr =0;
memrd =0;
branch=1;
call=0;
ret=0;
jump=0;
end

5'b10001: begin 
regwr =0;
memwr =0;
memrd =0;
branch=0;
call=1;
ret=0;
jump=0;
end

5'b10010: begin 
regwr =0;
memwr =0;
memrd =0;
branch=0;
call=0;
ret=1;
jump=0;
end

5'b10011: begin //LOAD
regwr =0;
memwr =0;
memrd =1;
branch=0;
call=0;
ret=0;
jump=0;
end

5'b10100: begin //SD
regwr =0;
memwr =1;
memrd =0;
branch=0;
call=0;
ret=0;
jump=0;
end

default:  begin 
regwr =0;
memwr =0;
memrd =0;
branch=0;
call=0;
ret=0;
jump=0;
end

endcase
end 
endmodule
