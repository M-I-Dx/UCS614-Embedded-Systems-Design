module m1(A,B,C,D,E,F,G,H,I); 
    input A,B;
    output C,D,E, F, G, H, I;
    assign C= A&B; //And gate
    assign D= A|B; //Or gate
    assign E= A^B; //Xor gate
    assign F= ~(A&B); //Nand gate
    assign G= ~(A|B); //Nor gate
    assign H= ~(A^B); //Xnor gate
    assign I= ~A; //Not gate
endmodule

module test;
    reg a,b;
    wire c,d,e,f,g,h,i;
    m1 g1(a,b,c,d,e,f,g,h,i); initial
    begin
        $dumpfile("logic_gates.vcd");
        $dumpvars(0,test); $display("a\tb\tAND\tOR\tXOR\tNAND\tNOR\tXNOR\tNOT(A)"); 
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",a,b,c,d,e,f,g,h,i); 
        #10 a=0;b=0; 
        #10 a=0;b=1; 
        #10 a=1;b=0;
        #10 a=1;b=1;
        $finish;
    end
endmodule