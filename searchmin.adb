with data;
use data;

procedure searchmin (
      Beg : in     Integer;
      L        : in     IntegersList;
      Pos_Min  :    out Integer        ) is

BEGIN

   Pos_Min:= Beg;

   FOR J IN Beg+1..L.count LOOP

      IF L.numbers(J) < L.Numbers(Pos_Min) THEN
         Pos_Min:= J;
      END IF;

   END LOOP;
END searchmin;