`timescale 1ps/1ps
module test;
reg clk;
reg reset;
reg coin5;
reg coin10;
wire dispense;
vending_machine uut(
    .clk(clk),.reset(reset),.coin5(coin5),.coin10(coin10),.dispense(dispense)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,test);
    clk = 0;
    reset = 1;
    coin5 = 0;
    coin10 = 0;
    #10 reset = 0;

    #10 coin5 = 1;
    #10 coin5 = 0;

    #10 coin10 = 1;
    #10 coin10 = 1;

    #30 coin10 = 1;
    #10 coin10 = 0;

    #10 coin5 = 1;
    #10 coin5 = 0;

    #50 $finish;
end
endmodule
