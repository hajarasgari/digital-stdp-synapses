// $Id: c_dff.v 5188 2012-08-30 00:31:31Z dub $

//==============================================================================
// configurable register
//==============================================================================

module c_dff
  (clk, reset, active, d, q);
   
`include "c_constants.v"
   
   // width of register
   parameter width = 32;
   
   // offset (left index) of register
   parameter offset = 0;
   
   parameter reset_type = `RESET_TYPE_ASYNC;
   
   parameter [offset:(offset+width)-1] reset_value = {width{1'b0}};
   
   input clk;
   wire  clk;
   input reset;
   wire  reset;
   input active;
   wire  active;   
   // data input
   input [offset:(offset+width)-1] d;
   
   // data output
   output [offset:(offset+width)-1] q;
   reg [offset:(offset+width)-1] q;
   
  generate
      
      case(reset_type)
	
	`RESET_TYPE_ASYNC:
	  always @(posedge clk, posedge reset)
	    if(reset)
	      q <= reset_value;
	    else if(active)
	      q <= d;
	
	`RESET_TYPE_SYNC:
	  always @(posedge clk)
	    if(reset)
	      q <= reset_value;
	    else if(active)
	      q <= d;
	
      endcase 
      
  endgenerate
   
endmodule