module ref_sum (Ain, Bin, Ci, Sout, Co);
    input [4:0] Ain;   // 5-bit input A
    input [4:0] Bin;   // 5-bit input B
    input Ci;          // Carry in
    output [4:0] Sout; // 5-bit output sum
    output Co;        // Carry out

    reg [5:0] S; // 6-bit register to hold the sum and carry out

    always @(Ain, Bin, Ci) begin
        // Perform the addition
        S = Ain + Bin + Ci; // Calculate the sum
    end

    assign Sout = S[4:0]; // Assign the lower 5 bits to Sout
    assign Co = S[5];     // Assign the 6th bit as carry out
endmodule


