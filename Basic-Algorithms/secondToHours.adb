WITH Ada.integer_Text_IO, ada.Text_IO; USE Ada.integer_Text_IO, ada.Text_IO;

PROCEDURE secondsToHours IS
   N:INTEGER;
   hh: INTEGER;
   mm: INTEGER;
   ss: INTEGER;
BEGIN
   Put("Enter the seconds");
   Put_Line("");
   GET(N);
   hh := N/3600;
   N:= N mod 3600;
   mm:= N/60;
   ss:= N mod 60;
   Put(hh);
   Put_Line("");
   Put(mm);
   Put_Line("");
   Put(ss);

END secondsToHours;
