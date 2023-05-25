module block (D,Clk,X,Y) ;
    input D,Clk;
    output reg [3:0] X,Y;
    integer i;

    always@ (posedge Clk) begin
        for(i=3;i>0;i=i-1) begin 
            X[i] = X[i-1];
        end

        
        for (i = 1; i<=3; i=i+1) begin
            Y[i] <= Y[i-1];
        end

        X[0] = D ;
        Y[0] <= D;
    end
endmodule