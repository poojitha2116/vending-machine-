module vending_machine(
    input clk,reset,coin5,coin10,
    output reg dispense
);
reg[1:0]state;
parameter s0 = 2'b00;
parameter s5 = 2'b01;
parameter s10 = 2'b10;
parameter s15 = 2'b11;
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= s0;
        dispense <= 0;
    end
    else
    begin
        dispense <= 0;
        case(state)
            s0:
            begin
                if(coin5)
                    state <= s5;
                else if(coin10)
                     state <= s10;
            end
            s5:
            begin
                if(coin5)
                    state <= s10;
                else if(coin10)
                     state <= s15;
            end
            s10:
            begin
                if(coin5||coin10)
                    state <= s15;
            end
            s15:
            begin
                dispense <= 1;
                state <= s0;
            end
        endcase
    end
end
endmodule