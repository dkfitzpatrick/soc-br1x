/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : 2-4 decoder gate level
********************************************************************************/

module decoder38(D, x, y, z, w);

	output [7:0] D;
	input x, y, z, w;
	
	wire nz = ~z;
	
	decoder24_gatelevel dec1(D[3:0], x, y, nz);
	decoder24_gatelevel dec2(D[7:4], x, y, z);
endmodule
