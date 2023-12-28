module pbEdge(
	input 		clk,
	input 		rst,
	input 		pb,
	output reg 	prss,
	output reg 	rls);

reg [3:0]deb;
always @(posedge clk or negedge rst)
	begin
		if(!rst)begin
			prss<='b0;
			rls<='b0;
			deb<='b0;
		end else begin
			deb[0]<=pb;
			deb[1]<=deb[0];
			deb[2]<=deb[1];
			deb[3]<=deb[2];
			if(deb==4'b1100)begin
					prss<=1'b1;
			end else begin
				prss<=1'b0;
			end
			if(deb==4'b0011)begin
					rls<=1'b1;
			end else begin
				rls<=1'b0;
			end
		end
	end
	
endmodule