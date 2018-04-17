
`timescale 1ps/1ps
enum integer {SC_FS = 0, SC_PS, SC_NS, SC_US, SC_MS, SC_SEC} sc_time_unit;
module dr_systemc_synchronizer_0_0(
clk0);


input clk0;

bit[32:0] clk_vector;


import "DPI-C" context function void initialize_and_register_clk(input string clk_name,input int half_duty_cycle);
import "DPI-C" context function void set_scope();
import "DPI-C" context function void initialize_systemc();
import "DPI-C" context function void synchronize_sc_time(input real t,input int tu,input int p_clk_vector);
import "DPI-C" function void update_clk_vector(input int p_clk_vector);

export "DPI-C" function stop_sim;
function void stop_sim();
  $display("End of simulation");
  $finish(0);
endfunction

export "DPI-C" function get_time;
function real get_time();
get_time = $time;
endfunction

initial
begin
  set_scope();
  initialize_and_register_clk("dr_c0_ui_clk_0_clk_250000000_0",250000000);

  initialize_systemc();
  clk_vector = {31'b0000000000000000000000000000000,clk0};
  update_clk_vector(clk_vector);
end


always@(posedge clk0)
  begin
  clk_vector = {31'b0000000000000000000000000000000,clk0};
  synchronize_sc_time($time,SC_PS,clk_vector);
end
endmodule
