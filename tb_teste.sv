`timescale 1ns/1ps

module tb_teste;
   logic [1:0]count;
   logic [31:0] a,b,c,d;
   logic [31:0]muxOut;

   mux dut(.f(muxOut), .a(a), .b(b),.c(c),.d(d), .sel(count));

   initial begin
     
     for(int case=0, case<=5,case++)begin
     
     a = $urandom(); 
     b = $urandom();
     c = $urandom();
     d = $urandom();

     count=2'b00;

     $monitor($time,"a = %d | b = %d | c = %d | d = %d sel = %b | muxOut = %d", a,b,c,d, count, muxOut);
     for(int i=0; i < 4; i++) begin 
     #10;    
     count++;
        end
   end
   
   #10;
   $stop;
end

endmodule: tb_teste
