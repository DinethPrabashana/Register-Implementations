module tb ;

parameter reg_size = 8;
reg [reg_size - 1 : 0] X;
reg LOAD, CLOCK, CLEAR, ENABLE ; 
wire [reg_size - 1 : 0] Y;

tri_s_buff #(reg_size) tsb(Y, X, LOAD, CLOCK, CLEAR, ENABLE);

always
begin 
    #5 CLOCK = ~CLOCK ;
end

initial
begin 
    LOAD = 0 ;
    ENABLE = 0 ;
    CLEAR = 1 ;
    CLOCK = 0;
    X = 100 ;

    #10 CLEAR = 0 ;
    #2 LOAD = 1 ; 
    #10 LOAD = 0 ; 
    #60 ENABLE = 1 ;
end 
endmodule 