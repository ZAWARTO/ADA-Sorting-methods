with Ada.integer_Text_IO, ada.Text_IO; 
use Ada.integer_Text_IO, ada.Text_IO;

procedure work is
   hh: Integer;
   mm: Integer;
   ss: Integer;
   worktime: Integer;
   starttime: Integer;
   aviabletime: Integer;
   pendingtime: Integer;
   finaltime: Integer;
begin
   Put("hour");
   Put_Line("");
   Get(hh);
   Put("minutes");
   Put_Line("");
   Get(mm);
   Put("seconds");
   Put_Line("");
   Get(ss);
   Put("work time in seconds");
   Put_Line("");
   Get(worktime);     
   if hh>=08 and hh<16 and mm>=00 and ss<=59 and worktime<=14400 then
      starttime:= hh*3600 + mm*60 + ss;
      aviabletime:= 57600 - starttime;
      if worktime > aviabletime then
         pendingtime:= worktime - aviabletime;
         finaltime:= 28800 + pendingtime;
      else
         finaltime:= starttime + work;
      end if;
      hh := finaltime/3600;
      finaltime:= finaltime mod 3600;
      mm:= finaltime/60;
      ss:= finaltime mod 60;
      Put(hh);
      Put_Line("");
      Put(mm);
      Put_Line("");
      Put(ss);
   end if;
end work;
