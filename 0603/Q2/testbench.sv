`timescale 1ns/1ns
module Test();

    reg [2:0] I;
    wire [2:0] O,O_gate,O_if,O_case;
    
    Add3 assign_test(
        .I(I),.O(O)
    );
    Add3_Gate gate(
        .I(I),.O(O_gate)
    );
    Add3_If gate_if(
        .I(I),.O(O_if)
    );
    Add3_Case gate_case(
        .I(I),.O(O_case)
    );

    initial begin
        I = 3'b000;#100;
        I = 3'b001;#100;
        I = 3'b010;#100;
        I = 3'b011;#100;
        I = 3'b100;#100;
        I = 3'b101;#100;
        I = 3'b110;#100;
        I = 3'b111;#100;
    end
    initial begin
        $display("Starting Testbench");
        #800;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule