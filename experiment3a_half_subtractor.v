module halfsub(x,y,d,b); 
    input x,y;
    output d,b;
    assign d=x^y;
    assign b=~x&y; 
endmodule

module test;
    reg x1,y1;
    wire s1,c1;
    halfsub g1(x1,y1,s1,c1); 
    initial
    begin
        $dumpfile("half_subtractor.vcd"); 
        $dumpvars(0,test);
        $display("x\ty\td\tb"); 
        $monitor("%b\t%b\t%b\t%b",x1,y1,s1,c1); 
        #10 x1=0; y1=0;
        #10 x1=0; y1=0;
        #10 x1=0; y1=1;
        #10 x1=1; y1=0;
        #10 x1=1; y1=1;
        $finish;
    end
endmodule