`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 15:00:35
// Design Name: 
// Module Name: four_bit_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_bit_counter(
    input clk,
    input load,
    input en_p,
    input en_t,
    input up_down,
    input [3:0] data_in,
    output reg [3:0] count_out,
    output rco_bar
);

reg [25:0] clk_div;   // divider register
wire slow_clk;

// Clock Divider
always @(posedge clk) begin
    clk_div <= clk_div + 1;
end

assign slow_clk = clk_div[25];   // slower clock

// Counter Logic
always @(posedge slow_clk) begin
    if (load == 0)
        count_out <= data_in;
    else if (en_p == 0 && en_t == 0) begin
        if (up_down == 1)
            count_out <= count_out + 1;
        else
            count_out <= count_out - 1;
    end
end

// Ripple Carry Output
assign rco_bar = ~(
    (en_t == 0) &&
    (
        (up_down == 1 && count_out == 4'b1111) ||
        (up_down == 0 && count_out == 4'b0000)
    )
);

endmodule
