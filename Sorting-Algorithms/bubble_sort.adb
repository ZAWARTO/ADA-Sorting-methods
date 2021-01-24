with data;
use data;


procedure bubble_sort (
      L : in out     Lista_Enteros  ) is

   Pos, aux, count : Integer;

BEGIN
   Count:= 1;

   LOOP EXIT WHEN Count > L.Count - 1;
      Pos:= 1;
      LOOP EXIT WHEN Pos > L.Count - 1;

      IF L.Numbers(Pos) > L.Numbers(Pos + 1) THEN
         Aux:= L.Numbers(Pos);
         L.Numbers(Pos):= L.Numbers(Pos + 1);
         L.Numbers(Pos + 1):= Aux;
      END IF;

      Pos:= Pos + 1;
   END LOOP;

      Count:= Count + 1;
   END LOOP;


end bubble_sort;
