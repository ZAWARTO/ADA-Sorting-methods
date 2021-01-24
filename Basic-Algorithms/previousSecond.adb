WITH Ada.integer_Text_IO, ada.Text_IO; USE Ada.integer_Text_IO, ada.Text_IO;

PROCEDURE previousSecond IS
   hh: INTEGER;
   mm: INTEGER;
   ss: INTEGER;
BEGIN
   Put("hh");
   Put_Line("");
   GET(hh);
   Put("mm");
   Put_Line("");
   GET(mm);
   Put("ss");
   Put_Line("");
   GET(ss);
   IF hh>=00 AND hh<=23 AND mm>=00 AND ss<=59 THEN
      ss:= ss-1;
      IF ss=-1 THEN
         ss:= 59;
         mm:= mm-1;
         IF mm=-1 THEN
            mm:=59;
            hh:= hh - 1;
            IF hh=-1 THEN
               hh:= 23;
            END IF;
         END IF;
      END IF;
   END IF;

   Put(hh);
   Put_Line("");
   Put(mm);
   Put_Line("");
   Put(ss);

END previousSecond;
