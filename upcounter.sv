module up_counter(
  input logic clk,
  input logic rst_n,
  input logic enable,
  output logic[3:0]count);
  
  always_ff@(posedge clk or negedge rst_n)
    begin 
      if(rst_n==0)
        count<=4'b0000;
      else if(enable)
        count<=count+1;
    end
endmodule
