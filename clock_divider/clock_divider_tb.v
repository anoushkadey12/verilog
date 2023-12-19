`timescale 1 ns/ 1ps

module clock_divider_tb ();

reg clk_i;
reg rst_i;
wire clk_o;

parameter PERIOD=20;

clock_divider CLOCK_DIVIDER(
    .clk_i(clk_i),
    .rst_i(rst_i),
    .clk_o(clk_o)
);
initial begin
    clk_i<=1'b0;
    rst_i<=1'b0;

    #PERIOD
    rst_i<= 1'b1;

    forever #(PERIOD/2) clk_i= ~clk_i;
    
end
    
endmodule