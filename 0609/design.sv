module ALU_Gate (
    S,A,B,Alu
);
    input [3:0] S;
    input [4:0] A,B;
    output reg [4:0] Alu;

    always @(S) begin
        case (S)
            4'b1101:begin
                Alu = A ~& B;
            end
            4'b1100:begin
                Alu = A ^ B;
            end
            4'b0111:begin
                Alu = A << 2;
            end
            4'b0101:begin
                Alu = {B[3:0],B[4]};
            end
            4'b0001:begin
                Alu = A > B ? A:B;
            end
            4'b0000:begin
                if (A>B) begin
                    Alu = 4'b1111;
                end
                else begin
                    Alu = 4'b0000;
                end
            end
            default:begin
                Alu = 4'b0110;
            end 
        endcase
    end

endmodule