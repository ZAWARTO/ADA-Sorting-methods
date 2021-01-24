with Ada.integer_Text_IO, ada.Text_IO; 
use Ada.integer_Text_IO, ada.Text_IO;

procedure secondsToHours is
   N:Integer;
   hh: Integer;
   mm: Integer;
   ss: Integer;
begin
   Put("Enter the seconds");
   Put_Line("");
   Get(N);
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
