module df(Q, D, CLK, CLR);

//port decleration 
input D ,CLK ,CLR ;
output reg Q ;

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