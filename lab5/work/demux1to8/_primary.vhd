library verilog;
use verilog.vl_types.all;
entity demux1to8 is
    port(
        EN              : in     vl_logic;
        A               : in     vl_logic_vector(2 downto 0);
        Y               : out    vl_logic_vector(7 downto 0)
    );
end demux1to8;
