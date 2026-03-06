`timescale 1ns/1ps
module zero_pattern_detector_tb;
reg clk;
reg reset;
reg in;
wire detected;
zero_pattern_detector uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .detected(detected)
);
always #5 clk = ~clk;
initial
begin
    $monitor("Time=%0t | input=%b | detected=%b", $time, in, detected);
end
initial
begin
    $dumpfile("zero_detector.vcd");
    $dumpvars(0, zero_pattern_detector_tb);
end
initial
begin
    clk = 0;
    reset = 1;
    in = 0;
    #10 reset = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 0; 
    #10 in = 1;
    #10 in = 0;
    #10 in = 0;  
    #10 in = 0;  
    #10 in = 1;
    #30 $finish;
end
endmodule
