module truth_table(i_x3, i_x2, i_x1, o_f);
	input i_x3, i_x2, i_x1;
	output o_f;
assign o_f = (~i_x3 & ~i_x2 & ~i_x1) | (~i_x3 & ~i_x2 & i_x1) | (~i_x3 & i_x2 & i_x1) | (i_x3 & ~i_x2 & i_x1) | (i_x3 & i_x2 & i_x1);
endmodule
