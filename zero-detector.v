module zero_detector(
input clk,
input reset,
input in,
output reg detected
);
reg state;
always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= 0;
    else
    begin
        if(in == 0)
            state <= 1;
        else
            state <= 0;
    end
end
always @(*)
begin
    if(state == 1)
        detected = 1;
    else
        detected = 0;
end
endmodule
