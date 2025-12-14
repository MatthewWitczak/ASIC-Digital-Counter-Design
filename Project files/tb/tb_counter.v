`timescale 1ns/1ps

module tb_counter;

    reg clk = 0;
    reg rst = 0;
    wire [7:0] q;

    counter #(.WIDTH(8)) dut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // 100 MHz
    always #5 clk = ~clk;

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, tb_counter);

        rst = 1;
        #30;
        rst = 0;

        #500;
        $finish;
    end

endmodule

