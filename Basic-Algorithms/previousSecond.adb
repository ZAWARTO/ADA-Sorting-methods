with Ada.integer_Text_IO, ada.Text_IO; 
use Ada.integer_Text_IO, ada.Text_IO;

procedure previousSecond is
   hh: INTEGER;
   mm: INTEGER;
   ss: INTEGER;
begin
   Put("hh");
   Put_Line("");
   Get(hh);
   Put("mm");
   Put_Line("");
   Get(mm);
   Put("ss");
   Put_Line("");
   Get(ss);
   if hh>=00 and hh<=23 and mm>=00 and ss<=59 then
      ss:= ss-1;
      if ss=-1 then
         ss:= 59;
         mm:= mm-1;
         if mm=-1 then
            mm:=59;
            hh:= hh - 1;
            if hh=-1 then
               hh:= 23;
            end if;
         end if;
      end if;
   end if;
   Put(hh);
   Put_Line("");
   Put(mm);
   Put_Line("");
   Put(ss);
end previousSecond;
