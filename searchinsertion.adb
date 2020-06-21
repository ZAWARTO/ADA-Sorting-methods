with data;
use data;

procedure searchinsertion (
      Num : in     Integer;
      L   : in     Lista_Enteros;
      Pos :    out Integer) is

   I: Integer;

BEGIN
   I:= 1;
   WHILE I<= L.Count AND THEN L.Numbers(I)< Num LOOP
      I:= I+1;
   END LOOP;

   Pos:= I;

end searchinsertion;
