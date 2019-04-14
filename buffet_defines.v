/*
*  Defines File includes all the definitions to control parameters in buffets.
*/

`define IDX_WIDTH       8
`define DATA_WIDTH      32
`define SIZE            2 ** `IDX_WIDTH - 1
`define SEPARATE_WRITE_PORTS    1
`define SUPPORTS_UPDATE         1
`define READREQ_FIFO_DEPTH      8
`define UPDATE_FIFO_DEPTH       8
`define READRESP_FIFO_DEPTH     8
`define PUSH_FIFO_DEPTH         8

`define SCOREBOARD_SIZE         8
