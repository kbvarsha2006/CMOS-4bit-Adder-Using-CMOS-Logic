module full_adder(
    input A, B, Cin,
    output Sum, Cout
);

    wire X1, X2, X3;

    assign X1 = A ^ B;
    assign Sum = X1 ^ Cin;
    assign X2 = A & B;
    assign X3 = X1 & Cin;
    assign Cout = X2 | X3;

endmodule


module adder4(
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

    wire C1, C2, C3;

    full_adder FA0(A[0], B[0], Cin, Sum[0], C1);
    full_adder FA1(A[1], B[1], C1, Sum[1], C2);
    full_adder FA2(A[2], B[2], C2, Sum[2], C3);
    full_adder FA3(A[3], B[3], C3, Sum[3], Cout);

endmodule
