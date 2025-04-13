library verilog;
use verilog.vl_types.all;
entity truth_table is
    port(
        i_x3            : in     vl_logic;
        i_x2            : in     vl_logic;
        i_x1            : in     vl_logic;
        o_f             : out    vl_logic
    );
end truth_table;
