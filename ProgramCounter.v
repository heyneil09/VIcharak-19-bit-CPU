module ProgramCounter (
input clk,reset,branch,jump,call,ret,
input [18:0] progcnt,jumpadd,
output reg[18:0] nextpc);

reg [18:0] v1 [0:15] ;
reg [3:0] stackpointer;

always@(posedge clk or posedge reset)
begin 
if(reset )
begin 
nextpc<=0;
stackpointer<=0;
end 

else if (ret)
begin stackpointer<=stackpointer+1;
nextpc<=v1[stackpointer];
end 

else if (call)
begin
v1[stackpointer]<=nextpc+1;
stackpointer <= stackpointer-1;
nextpc<=jumpadd;
end 

else if(branch)
begin 
nextpc<=jumpadd;
end 

else if(jump )
begin 
nextpc<=jumpadd;
end 

else 
begin 
nextpc<=progcnt;
end 

end 
endmodule



