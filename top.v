module top(
input clk,reset);
wire [18:0]progcon, nextpc,wrdata,instruction,result,memdata,data1,data2,address;
wire [4:0] opcode;
wire [3:0] rs1,rs2,rd;
wire [9:0] immediate;
wire regwr, memrd,memwr,branch,jump,call,ret;


ProgramCounter pc(.clk(clk), .reset(reset),.branch(branch),.jump(jump),.call(call),.ret(ret),.progcnt(progcnt),.jumpadd(address), .nextpc(nextpc));
InstDecoder dec( .instruction(instruction),.opcode(opcode),.rs1(rs1),.rs2(rs2),.rd(rd),.immediate(immediate));
instFetch fetch(.clk(clk),.reset(reset),.progcon(progcon),.nextpc(nextpc),.instruction(instruction));
RegisterFile regi(.clk(clk),.regwr(regwr), .rdreg1(rs1), .rdreg2(rs2), .wrreg(rd),.wrdata(writeaata), .data1(data1), .data2(data2));
ALU alu(.a(data1),.b(data2),.opcode(opcode), .result(result),.immediate(immediate));
ControlUnit con(.opcode(opcode), .regwr(regwr), .memrd(memrd),.memwr(memwr),.branch(branch),.jump(jump),.call(call),.ret(ret));
DataMemory data(.clk(clk),.memrd(memrd),.memwr(memwr),.address(result),.datain(data2),.dataout(memdata));







endmodule