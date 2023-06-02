module Question1 (Clk,D,Q1);
    input Clk,D;
    output reg [3:0] Q1;
    integer i;

    always @(posedge Clk) begin
        for (i = 3; i>0; i=i-1) begin
            Q1[i]=Q1[i-1];
        end
        Q1[0]=D;
    end
endmodule