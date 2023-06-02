module Add3 (
    I0,I1,I2,O
);
    input I0,I1,I2;
    output [2:0] O;

    wire I0_n = ~I0;
    wire I1_n = ~I1;
    wire I2_n = ~I2;

    assign O[0] = I0_n;

    wand temp1,temp2;
    wor or12;
    assign temp1 = I0_n;    
    assign temp1 = I1_n;
    
    assign temp2 = I0;
    assign temp2 = I1;

    assign or12 = temp1;
    assign or12 = temp2;

    assign O[1]=  or12;

    wand temp3,temp4,temp5;
    wor or123;
    assign temp3 = I2;
    assign temp3 = I1_n;
    assign temp3 = I0_n;

    assign temp4 = I2_n;
    assign temp4 = I1;
    
    assign temp5 = I2_n;
    assign temp5 = I0;

    assign or123 = temp3;
    assign or123 = temp4;
    assign or123 = temp5;

    assign O[2] = or123;
endmodule

module Add3_Gate (
    I0,I1,I2,O
);
    input I0,I1,I2;
    output [2:0] O;
    
    wire I0_n = ~I0;
    wire I1_n = ~I1;
    wire I2_n = ~I2;
 
    buf(O[0],I0_n);

    wire temp1,temp2;
    and(temp1,I0_n,I1_n);
    and(temp2,I0,I1);
    or(O[1],temp1,temp2);

    wire temp3,temp4,temp5;
    and(temp3,I2,I1_n,I0_n);

    and(temp4,I2_n,I1);
    and(temp5,I2_n,I0);

    or(O[2],temp3,temp4,temp5);
endmodule



module Add3_If (
    I0,I1,I2,O
);
    input I0,I1,I2;
    output reg [2:0] O;
    
    wire I0_n = ~I0;
    wire I1_n = ~I1;
    wire I2_n = ~I2;


    wire [2:0] Iall = {I2,I1,I0};
    always@ (Iall) 
    begin
        if(I0==1)     
            O[0] = ~I0;
        else 
            O[0] = ~I0;
        
        if ((I0 & I1) | (~I0&~I1))
            O[1] = 1;
        else 
            O[1] = 0;
        if ((I2 & ~I1 & ~I0) | (~I2 & I0) | (~I2 & I1))
            O[2] = 1;
        else 
            O[2]= 0;
    end

endmodule


module Add3_Case (
    I0,I1,I2,O
);
    input I0,I1,I2;
    output reg [2:0] O;

    wire [2:0] temp = {I2,I1,I0};

    always @(I0 or I1 or I2 ) begin
        case (temp)
            3'b000:begin
                O = 3'b011;
            end
            3'b001:begin
                O = 3'b100;
            end
            3'b010:begin
                O = 3'b101;
            end
            3'b011:begin
                O = 3'b110;
            end
            3'b100:begin
                O = 3'b111;
            end
            3'b101:begin
                O = 3'b000;
            end
            3'b110:begin
                O = 3'b001;
            end
            3'b111:begin
                O = 3'b010;
            end
            default:;
        endcase
    end
endmodule