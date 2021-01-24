with data, exchange, searchmin;
use data;

with searchmin;

procedure selection_sort (
      L : in out IntegersList) is

   num, Pos_Min, xind, xnum : Integer;

BEGIN
   FOR Ind IN L.Numbers'First..L.Count-1 LOOP

      searchmin(Ind, L, pos_min);
      Num:= Pos_Min;
      exchange(Num, Ind, L, Xind, Xnum);
      L.Numbers(Ind):= Xind;
      L.Numbers(num):= xnum;
 end loop;

end selection_sort;
