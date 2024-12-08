module instFetch(
input clk, reset,
input [18:0] progcon,//prog count 
output reg [18:0] nextpc,// next pc 
output reg [18:0] instruction);

reg [18:0] instructionMemory [0:255];

always@(posedge clk or posedge reset)

begin
if(reset)

begin instruction <=0;
nextpc<=0;
end 

else begin 
instruction<=instructionMemory[progcon];
nextpc<= progcon + 1;
end 
end 
endmodule 