`timescale 1ns/1ps

module tb_johnson_counter_4bit;

    reg CLK;
    reg RESET;
    wire [3:0] Q;

    // Instantiate Johnson Counter
    johnson_counter_4bit DUT (
        .CLK(CLK),
        .RESET(RESET),
        .Q(Q)
    );

    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Generate waveform
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_johnson_counter_4bit);
    end

    initial begin

        $display("Time | RESET | Q");
        $display("----------------");

        // Apply reset
        RESET = 1;
        #10;

        $display("%4t |   %b   | %b", $time, RESET, Q);

        // Release reset
        RESET = 0;

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        #10;
        $display("%4t |   %b   | %b", $time, RESET, Q);

        $finish;

    end

endmodule