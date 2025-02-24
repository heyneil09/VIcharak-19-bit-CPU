module DataMemory(
input clk,memrd,memwr,
input [18:0] datain,address,
output reg [18:0] dataout );

reg [18:0] memory[0:255];

always@(posedge clk)

begin 
 if (memwr)
 begin 
 memory[address]<= datain;
 end 
 else if (memrd)
 begin dataout = memory[address];
 end 
 else 
 begin 
 dataout =19'b0;
 end 
 end 
 endmodule 