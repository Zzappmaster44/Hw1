`timescale 1ns/1ns
`include "Multi_5.v"
module testBench;
  
  reg   signed  [4:0]   A,B;
  wire  signed  [9:0]   P;
  
  Multi_5   DUT   (.P(P), .A(A), .B(B));
  
  initial
    begin
      $monitor($time,,"A=%d B=%d P=%d",A,B,P);
      A = 5'd0;
      B = 5'd0;
      #100
      A = -5'd10;
      B = 5'd4;
      #100
      A = 5'd11;
      B = -5'd3;
      #100
      B = -5'd10;
      A = -5'd11;
      #100
      $finish;
    end
  
endmodule