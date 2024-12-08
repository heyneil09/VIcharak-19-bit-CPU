library verilog;
use verilog.vl_types.all;
entity instFetch is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        progcon         : in     vl_logic_vector(18 downto 0);
        nextpc          : out    vl_logic_vector(18 downto 0);
        instruction     : out    vl_logic_vector(18 downto 0)
    );
end instFetch;
