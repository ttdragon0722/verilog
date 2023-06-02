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
module Question2 (Clk,D,Q2);
    input Clk,D;
    output reg [3:0] Q2;
    integer i;

    always @(posedge Clk) begin
        for (i = 1; i<=3; i=i+1) begin
            Q2[i] <=Q2[i-1];
        end
        Q2[0]=D;
    end
endmodule