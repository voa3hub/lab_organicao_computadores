    module mux
    (
        output logic [31:0]f,
        input  logic [31:0]a,b,c,d,
        input logic [1:0] sel
    ); 

    always @(*) begin 
    if(sel==2'b00) f=a;
    else if (sel== 2'b01) f=b;
    else if (sel== 2'b11) f=d;
    else if (sel== 2'b10) f=c;
    else f=0;
    end
    
    endmodule


