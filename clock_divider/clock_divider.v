module clock_divider (
    input rst_i;
    input clk_i;
    output reg clk_o;
);

reg [2:0] count;

always @(posedge clk_i or neg rst_i) begin
    if (!rst_i) begin
        clk_o<=1'b0;
        count<=0;
    end else begin
        if (count==0) begin
            clk_o<= ~clk_o;
        end
        count<=count+1;
        
    end
    
end


endmodule
