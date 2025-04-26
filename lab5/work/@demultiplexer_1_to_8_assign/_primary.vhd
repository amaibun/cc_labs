library verilog;
use verilog.vl_types.all;
entity Demultiplexer_1_to_8_assign is
    port(
        Y               : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(2 downto 0);
        din             : in     vl_logic
    );
end Demultiplexer_1_to_8_assign;
