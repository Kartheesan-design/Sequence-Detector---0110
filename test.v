module test;
  reg clk,x,rst;
  wire z;
  seq_detector SEQ(x,clk,rst,z);
  initial
    begin
      $dumpfile("sequence.vcd");
      $dumpvars(0,test);
      clk=1'b0;rst=1'b1;
      #15 rst =1'b0;
    end
  
  always #5 clk = ~ clk;
  initial
    begin
      #12 x=0;#10 x=0;#10 x=1;#10 x=1;
      #10 x=0;#10 x=1;#10 x=1;#10 x=0; 
      #10 x=0;#10 x=1;#10 x=1;#10 x=0;
      #10 $finish;
    end
endmodule
