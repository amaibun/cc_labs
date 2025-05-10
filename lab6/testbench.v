module test_sum; // Top Level Testbench
    wire Ci, cm, cr;
    wire [4:0] Ain, Bin; // Change to 5 bits
    reg [4:0] Ain_r, Bin_r; // Change to 5 bits
    reg Ci_r;
    wire [4:0] res_my, res_ref; // Change to 5 bits for results

    // Instantiate the 5-bit adder modules
    my_sum my_block (Ain, Bin, Ci, res_my, cm);
    ref_sum ref_block (Ain, Bin, Ci, res_ref, cr);

    initial begin
        $display("\t\t Time Ain Bin Ci res_my cm res_ref cr");
        $monitor($time, Ain, Bin, Ci, res_my, cm, res_ref, cr);
        #400 $finish;
    end

    initial begin
        Ain_r = 5'b00001; // Initialize Ain_r
        #50 Ain_r = 5'b00101; // Change to 5
        #50 Ain_r = 5'b00001; // Change back to 1
        #50 Ain_r = 5'b00101; // Change to 5
        #50 Ain_r = 5'b00001; // Change back to 1
        #50 Ain_r = 5'b00101; // Change to 5
    end

    initial begin
        Bin_r = 5'b00010; // Initialize Bin_r
        #100 Bin_r = 5'b01010; // Change to 10
        #100 Bin_r = 5'b00010; // Change back to 2
        #100 Bin_r = 5'b01010; // Change to 10
    end

    initial begin
        Ci_r = 1'b0; // Initialize carry in
        #200 Ci_r = 1'b1; // Change carry in to 1
    end

    // Assign registers to wires
    assign Ain = Ain_r;
    assign Bin = Bin_r;
    assign Ci = Ci_r;
endmodule
