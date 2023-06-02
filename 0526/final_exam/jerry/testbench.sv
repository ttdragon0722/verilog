`timescale 1ns/1ns

module tc2;
  shift_reg_for uut(.Clk(Clk),
                    .D(D),
                    .Q2(Q2));
  reg Clk;
  reg D;
  wire [3:0] Q2;
  initial
  begin
    Clk=4'b0; 
    D=4'b0; 
    #100;
    Clk=4'b1; 
    D=4'b1; 
    #100;
    Clk=4'b0; 
    D=4'b1; 
    #100;
    Clk=4'b1; 
    D=4'b0; 
    #100;
    Clk=4'b0; 
    D=4'b0; 
    #100;
    Clk=4'b1; 
    D=4'b1; 
    #100;
    Clk=4'b0; 
    D=4'b1; 
    #100;
    Clk=4'b1; 
    D=4'b0; 
    #100;
    Clk=4'b0; 
    D=4'b0; 
    #100;
    Clk=4'b1; 
    D=4'b1; 
    #100;
    Clk=4'b0; 
    D=4'b1; 
    #100;
    Clk=4'b1; 
    D=4'b1; 
    #100;
    Clk=4'b0; 
    D=4'b1; 
    #100;
    Clk=4'b1; 
    D=4'b0; 
    #100;
    Clk=4'b0; 
    D=4'b0; 
    #100;
    Clk=4'b1; 
    D=4'b0; 
    #100;
    Clk=4'b0; 
    D=4'b1; 
    #100;
    Clk=4'b1; 
    D=4'b1; 
    #100;
    Clk=4'b0; 
    D=4'b1; 
    #100;
    Clk=4'b1; 
    D=4'b1; 
    #100;
    Clk=4'b0; 
    D=4'b1; 
    #100;
    Clk=4'b1; 
    D=4'b1; 
    #100;
  end

  initial
    begin
      $display("Starting Testbench...");
     #2200;
     $finish();
    end

  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0, uut);
    end

endmodule