
//==============================================================================
// global constant definitions
//==============================================================================


//------------------------------------------------------------------------------
// reset handling
//------------------------------------------------------------------------------

// asynchronous reset
`define RESET_TYPE_ASYNC 0

// synchronous reset
`define RESET_TYPE_SYNC  1

`define RESET_TYPE_LAST `RESET_TYPE_SYNC


//------------------------------------------------------------------------------
// arbiter types
//------------------------------------------------------------------------------

// round-robin arbiter with binary-encoded state
`define ARBITER_TYPE_ROUND_ROBIN_BINARY  0

// round-robin arbiter with one-hot encoded state
`define ARBITER_TYPE_ROUND_ROBIN_ONE_HOT 1

// prefix arbiter with binary-encoded state
`define ARBITER_TYPE_PREFIX_BINARY       2

// prefix arbiter with one-hot encoded state
`define ARBITER_TYPE_PREFIX_ONE_HOT      3

// matrix arbiter
`define ARBITER_TYPE_MATRIX              4

`define ARBITER_TYPE_LAST `ARBITER_TYPE_MATRIX


//------------------------------------------------------------------------------
// error checker capture more
//------------------------------------------------------------------------------

// disable error reporting
`define ERROR_CAPTURE_MODE_NONE       0
// don't hold errors
`define ERROR_CAPTURE_MODE_NO_HOLD    1

// capture first error only (subsequent errors are blocked)
`define ERROR_CAPTURE_MODE_HOLD_FIRST 2

// capture all errors
`define ERROR_CAPTURE_MODE_HOLD_ALL   3

`define ERROR_CAPTURE_MODE_LAST `ERROR_CAPTURE_MODE_HOLD_ALL


//------------------------------------------------------------------------------
// crossbar implementation variants
//------------------------------------------------------------------------------

// tristate-based
`define CROSSBAR_TYPE_TRISTATE 0

// mux-based
`define CROSSBAR_TYPE_MUX      1

// distributed multiplexers
`define CROSSBAR_TYPE_DIST_MUX 2

`define CROSSBAR_TYPE_LAST `CROSSBAR_TYPE_DIST_MUX


//------------------------------------------------------------------------------
// register file implemetation variants
//------------------------------------------------------------------------------

// 2D array implemented using flipflops
`define REGFILE_TYPE_FF_2D     0

// 1D array of flipflops, read using a mux
`define REGFILE_TYPE_FF_1D_MUX 1

// 1D array of flipflops, read using a tristate mux
`define REGFILE_TYPE_FF_1D_SEL 2

`define REGFILE_TYPE_LAST `REGFILE_TYPE_FF_1D_SEL


//------------------------------------------------------------------------------
// directions of rotation
//------------------------------------------------------------------------------

`define ROTATE_DIR_LEFT  0
`define ROTATE_DIR_RIGHT 1


//------------------------------------------------------------------------------
// wavefront allocator implementation variants
//------------------------------------------------------------------------------

// variant which uses multiplexers to permute inputs and outputs based on 
// priority
`define WF_ALLOC_TYPE_MUX  0

// variant which replicates the entire allocation logic for the different 
// priorities and selects the result from the appropriate one
`define WF_ALLOC_TYPE_REP  1

// variant implementing a Diagonal Propagation Arbiter as described in Hurt et 
// al, "Design and Implementation of High-Speed Symmetric Crossbar Schedulers"
`define WF_ALLOC_TYPE_DPA  2

// variant which rotates inputs and outputs based on priority
`define WF_ALLOC_TYPE_ROT  3

// variant which uses wraparound (forming a false combinational loop) as 
// described in Dally et al, "Principles and Practices of Interconnection 
// Networks"
`define WF_ALLOC_TYPE_LOOP 4

// variant implementing a somewhat simplified Diagonal Propagation Arbiter
`define WF_ALLOC_TYPE_SDPA 5

`define WF_ALLOC_TYPE_LAST `WF_ALLOC_TYPE_SDPA


//------------------------------------------------------------------------------
// binary operators
//------------------------------------------------------------------------------

`define BINARY_OP_AND  0
`define BINARY_OP_NAND 1
`define BINARY_OP_OR   2
`define BINARY_OP_NOR  3
`define BINARY_OP_XOR  4
`define BINARY_OP_XNOR 5

`define BINARY_OP_LAST `BINARY_OP_XNOR
