module my_sum (Ain, Bin, Ci, Sout, Co);
    input [4:0] Ain, Bin; // Change to 5 bits
    input Ci;
    output [4:0] Sout; // Change to 5 bits
    output Co;
    
    wire [4:0] C; // Change to accommodate carry bits for 5 bits
    wire Ci, Co;

    // Instantiate bitsum for each bit
    bitsum sum0(Ain[0], Bin[0], Sout[0], Ci, C[0]);
    bitsum sum1(Ain[1], Bin[1], Sout[1], C[0], C[1]);
    bitsum sum2(Ain[2], Bin[2], Sout[2], C[1], C[2]);
    bitsum sum3(Ain[3], Bin[3], Sout[3], C[2], C[3]);
    bitsum sum4(Ain[4], Bin[4], Sout[4], C[3], C[4]); // Added the 5th bit

    assign Co = C[4]; // Final carry out
endmodule

module bitsum (A, B, S, Cin, Cout);
    input A, B, Cin;
    output S, Cout;
    wire Res;
    wire c1, c2;

    xor(Res, A, B);
    and(c1, A, B);
    xor(S, Cin, Res);
    and(c2, Cin, Res);
    or(Cout, c1, c2);
endmodule

