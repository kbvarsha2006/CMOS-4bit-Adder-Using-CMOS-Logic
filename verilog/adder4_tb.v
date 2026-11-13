`timescale 1ns/1ps

module adder4_tb;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;
reg [4:0] expected;
integer i, j, k;
integer errors;

adder4 uut (
    .A(A), .B(B), .Cin(Cin),
    .Sum(Sum), .Cout(Cout)
);

initial begin
    $dumpfile("adder4.vcd");
    $dumpvars(0, adder4_tb);

    errors = 0;

    for (i = 0; i < 16; i = i + 1) begin
        for (j = 0; j < 16; j = j + 1) begin
            for (k = 0; k < 2; k = k + 1) begin
                A = i;
                B = j;
                Cin = k;
                expected = i + j + k;
                #1;

                if ({Cout, Sum} !== expected) begin
                    errors = errors + 1;
                    $display("FAIL: A=%d B=%d Cin=%d", A, B, Cin);
                end
            end
        end
    end

    if (errors == 0)
        $display("PASS: All 512 test cases passed!");
    else
        $display("FAIL: %d errors found", errors);

    $finish;
end

endmodule
