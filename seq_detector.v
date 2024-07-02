// Design of sequence detector

module seq_detector(x,clk,rst,z);
  input x,clk,rst;
  output reg z;
  parameter S0 = 0,S1 = 1,S2 = 2,S3 =3;
  reg[1:0]PS,NS;
  
  always@(posedge clk or posedge rst)begin
    if(rst)begin
      PS <= S0;
    end
    else begin
      PS <= NS;
    end
  end
  
  always @(PS,x)begin
    
    case(PS)
      S0:begin
        z = x?0:0;
        NS = x?S0:S1;
      end
      
      S1:begin
        z = x?0:0;
        NS = x?S2:S1;
      end
      
      S2:begin
        z = x?0:0;
        NS = x?S3:S1;
      end
      
      S3:begin
        z=x?0:1;
        NS = x?S0:S1;
      end
    endcase
  end
    
endmodule
