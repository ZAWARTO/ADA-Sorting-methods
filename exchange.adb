with data;
use data;

procedure exchange (num: in integer;
                       ind: in integer;
                       l: IN IntegersList;
                       Xind: OUT Integer;
                       xnum: out integer)  is

   Aux: Integer;
   v: IntegersList;
BEGIN
   v:= l;
   Aux:= V.Numbers(Ind);
   V.Numbers(Ind):= V.Numbers(Num);
   V.Numbers(num):= aux;
   Xind:= V.Numbers(Ind);
   Xnum:= V.Numbers(Num);

end exchange;