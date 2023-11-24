
class transaction;
  
  //declaring the transaction items
  rand bit in;
  rand bit d0;
  rand bit d1;
       bit q0;
       bit q1;
  
  function void display(string name);
    $display("-------------------------");
    $display("- %s ",name);
    $display("-------------------------");
    $display(" - in = %b",in);
    $display("- d0 = %0b, d1 = %0b",d0,d1);
    $display("- q0 = %0b, q1 = %0b",q0,q1);
    $display("-------------------------");
  endfunction
endclass
