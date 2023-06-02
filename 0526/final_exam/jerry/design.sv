module shift_reg_for(Clk,D,Q2);
input  Clk,D;
output [3:0]Q2;
reg    [3:0]Q2;
integer i;
always@(posedge Clk)
  begin
    for(i=1;i<=3;i=i+1)
      Q2[i]<=Q2[i-1];
    Q2[0]=D;
  end

endmodule