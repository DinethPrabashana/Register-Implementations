module tri_s_buff #(parameter reg_size = 8) (y, x, load, clk, clr, en);

input [reg_size - 1 : 0] x;
input load, clk, clr, en ; 
output [reg_size - 1 : 0] y;

reg [reg_size - 1 : 0] d ;
wire [reg_size - 1 : 0] q ;

integer i;

always @(*)
begin 
    for (i = 0 ; i < reg_size ; i = i + 1)
    begin 
        d[i] = (load & x[i])| ((~load) & q[i]) ;
    end
end

genvar j ;
generate
    for (j = 0 ; j < reg_size ; j = j + 1)
    begin : gen_df
        df df_u(q[j], d[j], clk, clr) ;
    end 
endgenerate 

genvar k ; 
generate 
    for (k = 0 ; k < reg_size ; k = k + 1 )
    begin : gen_tri_sw
        tri_sw sw_u(y[k], q[k], en);
    end 
endgenerate 

endmodule 



