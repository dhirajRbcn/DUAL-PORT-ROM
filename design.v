module q1e#(
	parameter ADDR_WIDTH = 4, 
	parameter DATA_WIDTH = 8   
)(
	input wire clk,cs_0,cs_1,           
	input wire [ADDR_WIDTH-1:0] address_0, address_1, 
	output reg [DATA_WIDTH-1:0] data_out_0, data_out_1 
);

reg [DATA_WIDTH-1:0] rom_memory [(2**ADDR_WIDTH)-1:0];

initial begin
	for( integer i=0; i<(2**ADDR_WIDTH);i++) 
		rom_memory[i]=i+10;

end

always @(posedge clk) begin
	if (cs_0)
		data_out_0 <= rom_memory[address_0];
	if (cs_1)
		data_out_1 <= rom_memory[address_1]; 
end

endmodule

