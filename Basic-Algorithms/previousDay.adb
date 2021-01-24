with Ada.integer_Text_IO, ada.Text_IO; 
use Ada.integer_Text_IO, ada.Text_IO;

procedure previousDay is
   dd: INTEGER;
   mm: INTEGER;
   aaaa: INTEGER;
begin
   Put("day");
   Put_Line("");
   Get(dd);
   Put("month");
   Put_Line("");
   Get(mm);
   Put("year");
   Put_Line("");
   Get(aaaa);
   if dd = 1 and (mm = 2 or mm = 4 or mm = 6 or mm = 9 or mm = 11) then
      mm:= mm - 1;
      dd := 31;
   elsif dd = 1 AND (mm = 5 or mm = 7 or mm = 8 or mm = 10 or mm = 12) then
      mm:= Mm - 1;
      dd:= 30;
   elsif Dd = 1 AND Mm = 1 then
      dd:= 31;
      mm:= 12;
      aaaa:= aaaa-1;
   elsif dd = 1 AND mm = 3 then
      Mm:= 2;
      if (aaaa mod 4 = 0 or aaaa mod 400 = 0) and aaaa mod 100 /= 0 then
         dd:= 29;
      else
         dd:= 28;
      end if;
   else
      dd:= dd-1;
   end if;
   Put("The previous day was: ");Put(dd);Put("/");Put(mm);Put("/");Put(aaaa);
end previousDay;
