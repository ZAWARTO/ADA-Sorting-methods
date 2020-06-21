with data;
use data;

procedure moveright (
      L   : in out Lista_Enteros;
      Pos : in     Integer        ) is

BEGIN
   L.numbers(pos+1..L.Count+1):= L.numbers(pos..L.Cont);

end moveright;
