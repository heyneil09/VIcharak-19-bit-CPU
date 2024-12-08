module RegisterFile(
input clk,regwr,
input[3:0] rdreg1,rdreg2,wrreg,
input [18:0] wrdata,
output [18:0] data1,data2);


reg [18:0] register [0:15];

assign data1= register[rdreg1];
assign data2= register[rdreg2];

always@(posedge clk)

begin 

if (regwr)	
begin 
register[wrreg]<=wrdata;
end end
endmodule
