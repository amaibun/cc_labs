`include "demux1to8.v" 

module tb_demux1to8; 
    wire [7:0] Y;         // Change to 8 bits for 1-to-8 demux
    reg [2:0] A;          // Change to 3 bits for 1-to-8 demux
    reg din;              // Input data

    // Instantiate the 1-to-8 demux
    Demultiplexer_1_to_8_assign I0 (Y, A, din); 

    initial begin 
        din = 1;          // Set input data to 1
        A = 3'b000;      // Initialize selection lines to 0

        // Test all combinations of A
        #1 A = 3'b000; 
        #1 A = 3'b001; 
        #1 A = 3'b010; 
        #1 A = 3'b011; 
        #1 A = 3'b100; 
        #1 A = 3'b101; 
        #1 A = 3'b110; 
        #1 A = 3'b111; 
    end 

    initial begin
        // Monitor the output and inputs
        $monitor("%t | Din = %d | A = %b | Y = %b", 
                 $time, din, A, Y); 
    end 
endmodule
