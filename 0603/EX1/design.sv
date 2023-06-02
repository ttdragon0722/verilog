// 資料流
module Power(
    I0,I1,Q3,Q2,Q1,Q0
);
    input I0,I1;
    output Q3,Q2,Q1,Q0;

    wire n_I0 = ~I0;

    assign Q0 = I0;
    assign Q1 = 1'b0;
    assign Q2 = I1 & n_I0;
    assign Q3 = I0 & I1;

endmodule

// 閘層次
module PowerGate (
    I0,I1,Q3,Q2,Q1,Q0
);
    
    input I0,I1;
    output Q3,Q2,Q1,Q0;

    wire n_I0 = ~I0;

    buf(Q0,I0);
    // assign Q0 = I0;
    buf(Q1,1'b0);
    // assign Q1 = 1'b0;
    and(Q2,I1,n_I0);
    and(Q3,I0,I1);

endmodule

// if 
module PowerIf (
    I0,I1,Q3,Q2,Q1,Q0
);
    input I0,I1;
    output reg Q3,Q2,Q1,Q0;

    always @(I0,I1) begin
        Q1 = 0;
        if (I0 == 1'b0) 
            Q0 = 1'b0;
        else 
            Q0 = 1'b1;

        if (I1 == 1'b1 & I0 == 1'b0) 
            Q2 = 1'b1;
        else 
            Q2 = 1'b0;
        
        if (I1 & I0) 
            Q3 = 1;
        else 
            Q3 = 0;
    end;

endmodule

// case
module PowerCase (
    I0,I1,Q3,Q2,Q1,Q0
);
    input I0,I1;
    output reg Q3,Q2,Q1,Q0;

    wire [1:0] temp = {I1,I0};
    
    always @(temp) begin
        Q1 = 0;
        case (temp)
            2'b00: begin
                Q0 = 0;
                Q2 = 0;
                Q3 = 0;
            end
            2'b01: begin
                Q0 = 1;
            end
            2'b10: begin
                Q0 = 0;
                Q2 = 1;
                Q3 = 0;
            end 
            2'b11: begin
                Q0 = 1;
                Q2 = 0;
                Q3 = 1;
            end
            default: begin
                $display("error");
            end 
        endcase
    end

endmodule


