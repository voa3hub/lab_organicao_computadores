`timescale 1ns/1ps

module tb_teste;
   logic [1:0]count;
   logic [31:0] a,b,c,d;
   logic [31:0]muxOut;

   mux dut(.f(muxOut), .a(a), .b(b),.c(c),.d(d), .sel(count));

   initial begin
     a = 32'd10; 
     b = 32'd20;
     c = 32'd30;
     d = 32'd40;

     $monitor($time,"a = %d | b = %d | c = %d | d = %d sel = %b | muxOut = %d", a,b,c,d, count, muxOut);
     for(count = 0; count < 4; count++) #10;     
     #10 $stop;
   end

endmodule: tb_teste
