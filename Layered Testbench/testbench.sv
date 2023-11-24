

//including interfcae and testcase files
//`include "interface.sv"

//-------------------------[NOTE]---------------------------------
//Particular testcase can be run by uncommenting, and commenting the rest
//`include "random_test.sv"
//`include "directed_test.sv"
//----------------------------------------------------------------

module tbench_top;
  
  //clock and reset signal declaration
  bit clk;
  //bit reset;
  
  //clock generation
  always #5 clk = ~clk;
  
  //reset Generation
  /*initial begin
    reset = 1;
    #5 reset =0;
  end
  */
  
  //creatinng instance of interface, inorder to connect DUT and testcase
  intf i_intf(clk);
  
  //Testcase instance, interface handle is passed to test as an argument
  test t1(i_intf);
  
  //DUT instance, interface signals are connected to the DUT ports
  iiitb_icg DUT (
    .clk(i_intf.clk),
    .in(i_intf.in),
    .d0(i_intf.d0),
    .d1(i_intf.d1),
    .q0(i_intf.q0),
    .q1(i_intf.q1)
   );
  
  //enabling the wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
