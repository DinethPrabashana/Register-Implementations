module tri_sw(Y , Q, EN);
input Q , EN ;
output reg Y ;

always @(*)
begin 
    if (EN)
    begin
        Y = Q ; 
    end
    else 
    begin 
        Y = 1'bx ;
    end
end

endmodule 