
class driver;
  
  //used to count the number of transactions
  int no_transactions;
  
  //creating virtual interface handle
  virtual intf vif;
  
  //creating mailbox handle
  mailbox gen2driv;
  
  //constructor
  function new(virtual intf vif,mailbox gen2driv);
    //getting the interface
    this.vif = vif;
    //getting the mailbox handles from  environment 
    this.gen2driv = gen2driv;
  endfunction
  
  //Reset task, Reset the Interface signals to default/initial values
 task reset;
   // wait(vif.reset);
    $display("[ DRIVER ] ----- Reset Started -----");
    vif.in <= 0;
    vif.d0 <= 0;
    vif.d1 <= 0;
   // wait(!vif.reset);
    $display("[ DRIVER ] ----- Reset Ended   -----");
  endtask
  
  //drivers the transaction items to interface signals
  task main;
    forever begin
      transaction trans;
      gen2driv.get(trans);
      @(posedge vif.clk);
      //vif.valid <= 1;
            vif.in   <= trans.in;
            vif.d0   <= trans.d0;
            vif.d1     <= trans.d1;
      //vif.b     <= trans.b;
      @(posedge vif.clk);
     // vif.valid <= 0;
      trans.q0  = vif.q0;
      trans.q1  = vif.q1;

      @(posedge vif.clk);
      trans.display("[ Driver ]");
      no_transactions++;
    end
  endtask
  
endclass
