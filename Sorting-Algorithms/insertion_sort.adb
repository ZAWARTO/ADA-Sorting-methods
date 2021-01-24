with data;
use data;

with searchinsertion, moveright;

procedure insertion_sort (
      L1         : in     Lista_Enteros;
      L_Sorted :    out Lista_Enteros  ) is
      Pos : Integer;
      L11: IntegersList;

   BEGIN
      L_Sorted:= l1;
      L_Sorted.Count:= 0;
      FOR I IN 1..L1.Cont LOOP

         searchinsertion(L11.Numbers(I),  L11, Pos);
         moveright( L11,Pos);
         L11.Numbers(Pos):= L1.Numbers(I);
         L11.Count:=  L11.Count + 1;

      END LOOP;
      L_Sorted := L11


end insertion_sort;
