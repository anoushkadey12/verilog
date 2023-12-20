module led_hello_world
(input key_i, output led_o);

assign led_o= ~key_i;

endmodule
