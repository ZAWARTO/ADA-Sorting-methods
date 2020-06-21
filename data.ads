package data is

   Max_Elem : constant Integer := 10;  

   type IntegersVector is array (Integer range <>) of Integer;

   type IntegersList is 
      record 
         Numbers : IntegersVector (1 .. Max_Elem);  
         Count   : Integer;  
      end record; 

end data;
