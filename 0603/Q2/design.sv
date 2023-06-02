module Add3 (
    I,O
);
    input [2:0] I;
    output [2:0] O;

    wire [2:0] I_not = ~ I; 
    assign O[0] = I_not[0];

    wand temp1,temp2;
    wor or12;
    assign temp1 = I_not[0];
    assign temp1 = I_not[1];
    
    assign temp2 = I[0];
    assign temp2 = I[1];

    assign or12 = temp1;
    assign or12 = temp2;

    assign O[1]=  or12;

    wand temp3,temp4,temp5;
    wor or123;
    assign temp3 = I[2];
    assign temp3 = I_not[1];
    assign temp3 = I_not[0];

    assign temp4 = I_not[2];
    assign temp4 = I[1];
    
    assign temp5 = I_not[2];
    assign temp5 = I[0];

    assign or123 = temp3;
    assign or123 = temp4;
    assign or123 = temp5;

    assign O[2] = or123;
endmodule

module Add3_Gate (
    I,O
);
    input [2:0] I;
    output [2:0] O;

    wire [2:0] I_not = ~ I; 
    buf(O[0],I_not[0]);

    wire temp1,temp2;
    and(temp1,I_not[0],I_not[1]);
    and(temp2,I[0],I[1]);
    or(O[1],temp1,temp2);

    wire temp3,temp4,temp5;
    and(temp3,I[2],I_not[1],I_not[0]);

    and(temp4,I_not[2],I[1]);
    and(temp5,I_not[2],I[0]);

    or(O[2],temp3,temp4,temp5);
endmodule



module Add3_If (
    I,O
);
    input [2:0] I;
    output reg [2:0] O;
    wire [2:0] I_not = ~ I;
    wire Test; 

    assign Test = (I[0] & I[1]) | (I_not[0] & I_not[1]);
    always @(I) begin
        if (I[0] == 1) begin
            O[0] = 0;
        end
        else begin
            O[0] = 1;
        end
        if ( (I[0] & I[1]) | (I_not[0] & I_not[1]) ) begin
            O[1] = 1 ;
        end
        else begin
            O[1] = 0;
        end
        
        if ( (I[2] & I_not[1] & I_not[0]) | (I_not[2] & I[1])| (I_not[2] & I[0]) ) begin
            O[2] = 1 ;
        end
        else begin
            O[2] = 0;
        end
    end
endmodule


module Add3_Case (
    I,O
);
    input [2:0] I;
    output reg [2:0] O;
    wire [2:0] I_not = ~ I; 

    always @(I) begin
        case (I)
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