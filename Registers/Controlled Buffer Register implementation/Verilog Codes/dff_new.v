module dff_new(Q, D, CLK, CLR);

input CLK, CLR, D ;
output  reg Q ;

always @(posedge CLK or posedge CLR)
begin 
    if (CLR)
    begin
        Q <= 0 ; 
    end
    else
    begin 
        Q <= D ;
    end
end

endmodule