`timescale 1ns / 1ps

module tb_aes_wrapper(

    );
    
  reg clk, rst;
  wire bitti;
  
  aes_wrapper aw(clk,rst,bitti);
  
  always begin
    clk = ~clk;
    #5;
  end
  
  initial begin
    clk=0;
    rst = 1;
    #100;
    rst = 0;
  end

endmodule