library verilog;
use verilog.vl_types.all;
entity InstDecoder is
    port(
        instruction     : in     vl_logic_vector(18 downto 0);
        opcode          : out    vl_logic_vector(4 downto 0);
        rs1             : out    vl_logic_vector(3 downto 0);
        rs2             : out    vl_logic_vector(3 downto 0);
        rd              : out    vl_logic_vector(3 downto 0);
        immediate       : out    vl_logic_vector(9 downto 0)
    );
end InstDecoder;
