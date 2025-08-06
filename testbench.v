module q1e_tb;
parameter ADDR_WIDTH = 4;
parameter DATA_WIDTH = 8;

reg clk,cs_0, cs_1;
reg [ADDR_WIDTH-1:0] address_0, address_1;
wire [DATA_WIDTH-1:0] data_out_0, data_out_1;
integer i;
q1e #(.ADDR_WIDTH(ADDR_WIDTH), .DATA_WIDTH(DATA_WIDTH)) dut (
	clk,cs_0,cs_1,address_0,address_1,data_out_0,
	data_out_1);

always #5 clk = ~clk; 

initial begin
	$dumpfile("q1e.vcd");
	$dumpvars();
end
initial begin
	$monitor("Time: %0t | Address 0: %0d | Data Out 0: %h | Address 1: %0d | Data Out 1: %h",
		$time, address_0, data_out_0, address_1, data_out_1);

	clk = 0;cs_0 = 0; cs_1 = 0;address_0 = 0; address_1 = 0;
	for(i=0;i<(2**ADDR_WIDTH);i++) begin
		@(negedge clk) address_0=i;address_1=i;cs_0=$random;cs_1=$random;
	end
	#10 $finish; 
end


endmodule

