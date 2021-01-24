WITH Ada.integer_Text_IO, ada.Text_IO; USE Ada.integer_Text_IO, ada.Text_IO;

PROCEDURE previousDay IS
   dd: INTEGER;
   mm: INTEGER;
   aaaa: INTEGER;
BEGIN
   Put("day");
   Put_Line("");
   GET(dd);
   Put("month");
   Put_Line("");
   GET(mm);
   Put("year");
   Put_Line("");
   GET(aaaa);
   IF dd = 1 and (mm = 2 or mm = 4 or mm = 6 or mm = 9 or mm = 11) THEN
      mm:= mm - 1;
      dd := 31;
   ELSIF dd = 1 AND (mm = 5 OR mm = 7 OR mm = 8 OR mm = 10 OR mm = 12) THEN
      mm:= Mm - 1;
      dd:= 30;
   ELSIF Dd = 1 AND Mm = 1 THEN
      dd:= 31;
      mm:= 12;
      aaaa:= aaaa-1;
   ELSIF dd = 1 AND mm = 3 THEN
      Mm:= 2;
      IF (aaaa mod 4 = 0 OR aaaa mod 400 = 0) AND aaaa mod 100 /= 0 THEN
         dd:= 29;
      ELSE
         dd:= 28;
      END IF;
   ELSE
      dd:= dd-1;
   END IF;

   Put("The previous day was: ");Put(dd);Put("/");Put(mm);Put("/");Put(aaaa);

END previousDay;
