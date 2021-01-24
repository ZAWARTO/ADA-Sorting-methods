WITH Ada.integer_Text_IO, ada.Text_IO; USE Ada.integer_Text_IO, ada.Text_IO;

PROCEDURE work IS
   hh: INTEGER;
   mm: INTEGER;
   ss: INTEGER;
   worktime: Integer;
   starttime: Integer;
   aviabletime: Integer;
   pendingtime: Integer;
   finaltime: integer;
BEGIN
   Put("hour");
   Put_Line("");
   GET(hh);
   Put("minutes");
   Put_Line("");
   GET(mm);
   Put("seconds");
   Put_Line("");
   GET(ss);
   Put("work time in seconds");
   Put_Line("");
   GET(worktime);     

   IF hh>=08 AND hh<16 AND mm>=00 AND ss<=59 AND worktime<=14400 THEN
      starttime:= hh*3600 + mm*60 + ss;
      aviabletime:= 57600 - starttime;
      IF worktime > aviabletime THEN
         pendingtime:= worktime - aviabletime;
         finaltime:= 28800 + pendingtime;
      ELSE
         finaltime:= starttime + work;
      END IF;
      hh := finaltime/3600;
      finaltime:= finaltime mod 3600;
      mm:= finaltime/60;
      ss:= finaltime mod 60;
      Put(hh);
      Put_Line("");
      Put(mm);
      Put_Line("");
      Put(ss);
   END IF;
END work;
