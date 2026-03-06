module zero_pattern_detector(input clk,input reset,input in, output reg detected);
reg [1:0] state;
parameter S0 = 2'b00; // initial state
parameter S1 = 2'b01; // one zero detected
parameter S2 = 2'b10; // two zeros detected
always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= S0;
    else
    begin
        case(state)
        S0:
        if(in == 0)
            state <= S1;
        else
            state <= S0;
        S1:
        if(in == 0)
            state <= S2;
        else
            state <= S0;
        S2:
        if(in == 0)
            state <= S2;
        else
            state <= S0;
        endcase
    end
end
always @(*)
begin
    if(state == S2)
        detected = 1;
    else
        detected = 0;
end
endmodule
