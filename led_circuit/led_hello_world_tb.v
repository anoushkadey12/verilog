`timescale 1 us/ 1 ps
module led_hello_world_tb();
// constants                                           
// test vector input registers
reg key_i;
// wires                                               
wire led_o;

// assign statements (if any)                          
led_hello_world LED_HELLO_WORLD (
// port map - connection between master ports and signals/registers   
	.key_i(key_i),
	.led_o(led_o)
);

initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
	key_i= 1'b0;
	#10;

	key_i= 1'b1;
	#10;

	key_i= 1'b0;
	#10;

	key_i= 1'b1;


// --> end                                             
$display("Finish testbench");                       
end                                                    
                                                
endmodule
