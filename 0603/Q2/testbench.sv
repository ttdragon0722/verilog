`timescale 1ns/1ns
module Test();

    reg I0,I1,I2;
    wire [2:0] O,O_gate,O_if,O_case;
    
    Add3 T1(
        .I0(I0),.I1(I1),.I2(I2),.O(O)
    );
    Add3_Gate T2(
        .I0(I0),.I1(I1),.I2(I2),.O(O_gate)
    );
    Add3_If T3(
        .I0(I0),.I1(I1),.I2(I2),.O(O_if)
    );
    Add3_Case T4(
        .I0(I0),.I1(I1),.I2(I2),.O(O_case)
    );

    initial begin
        I2 = 1'b0;I1 = 1'b0;I0 = 1'b0;#100;
        I2 = 1'b0;I1 = 1'b0;I0 = 1'b1;#100;
        I2 = 1'b0;I1 = 1'b1;I0 = 1'b0;#100;
        I2 = 1'b0;I1 = 1'b1;I0 = 1'b1;#100;
        I2 = 1'b1;I1 = 1'b0;I0 = 1'b0;#100;
        I2 = 1'b1;I1 = 1'b0;I0 = 1'b1;#100;
        I2 = 1'b1;I1 = 1'b1;I0 = 1'b0;#100;
        I2 = 1'b1;I1 = 1'b1;I0 = 1'b1;#100;
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