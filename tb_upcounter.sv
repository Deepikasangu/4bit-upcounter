module tb_upcounter;
  logic clk=0;
  logic rst_n;
  logic enable;
  logic [3:0]count;
  
  up_counter dut( .clk(clk),.rst_n(rst_n),.enable(enable),.count(count));
  always #5 clk= ~clk;
  initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_upcounter);
    
    $display("time\t reset\t enable\t counter");
    $monitor("%0t\t %b\t %b\t %0d",$time,rst_n,enable,count);
    
    rst_n=0; enable=0;
    #15 rst_n=1;
    repeat(10)begin
      enable=1;
      #10;
    end
    $finish;
  end
endmodule
