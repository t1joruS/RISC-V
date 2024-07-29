`timescale 1ns / 1ps

module tb_top;

// Inputs
reg [3:0] a;
reg [3:0] b;
reg [1:0] sel;

// Outputs
wire [3:0] res;
wire overflow;

// Instantiate the Unit Under Test (UUT)
top uut (
    .a(a),
    .b(b),
    .sel(sel),
    .res(res),
    .overflow(overflow)
);

initial begin
    // Initialize inputs
    a = 0;
    b = 0;
    sel = 0;

    // Wait 100 ns for global reset to finish
    #100;

    // Add stimulus here
    a = 4'b0011; b = 4'b0010; sel = 2'b00; #10; // a + b
    a = 4'b0100; b = 4'b0011; sel = 2'b01; #10; // a - b
    a = 4'b0010; b = 4'b0011; sel = 2'b10; #10; // a * b
    a = 4'b0100; b = 4'b0010; sel = 2'b11; #10; // a / b

    // Test for overflow
    a = 4'b1111; b = 4'b0001; sel = 2'b00; #10; // a + b (overflow expected)

    // Test invalid selection
    sel = 2'b10; #10; // Should not trigger invalid since this is a valid case
    sel = 2'b11; #10; // Should not trigger invalid since this is a valid case

    // Finish simulation
    $finish;
end

initial begin
    // Monitor the signals
    $monitor("Time = %0t, a = %b, b = %b, sel = %b, res = %b, overflow = %b", $time, a, b, sel, res, overflow);
end

endmodule
