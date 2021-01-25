with Ada.Numerics.Elementary_Functions,Ada.Integer_Text_IO, Ada.Text_IO;
use  Ada.Numerics.Elementary_Functions,Ada.Integer_Text_IO, Ada.Text_IO;
package body ListsExercises is

   --------------
   -- IsInList --
   --------------
   function IsInList(L: in T_List_Static; N: in Integer) return Boolean is
      I:Integer:= l.Data'First;
   begin
      while I <= L.count loop
         if L.Data(I) = N then
            return true;
         end if;
         I:=I+1;
      end loop;
      return false;
   end IsInList;

   --------------
   -- Position --
   --------------
   function Position
     (L: in T_List_Static;
      Num: in Integer)
      return Integer
   is
      I:Integer:= l.Data'First;
   begin
      while I <= L.count loop
         if L.Data(I) = Num then
            return I;
         end if;
         I:=I+1;
      end loop;
      return Integer'Last;
   end Position;

   -----------
   -- Polar --
   -----------
   function Polar (C: in T_Complex_tri) return T_complex_polar is
      T:T_Complex_Polar;
      correction:Float:= 0.00;
      NPi:Float:=3.14;
   begin
      T.module:= Sqrt(((C.A)**2)+((C.B)**2));
      if C.A > 0.0 and C.B > 0.0 then
         correction:= 0.0;
      elsif C.A > 0.0 and C.B < 0.0 then
         correction:= 2.0*NPi;
      elsif C.A < 0.0 then
         correction:= NPi;
      END IF;

      if C.A/=0.0 then
         T.argument:= correction + (Arctan(C.B/C.A));
      elsif C.A = 0.0 and C.B > 0.0 then
         T.argument:= NPi/2.0;
      elsif C.A = 0.0 and C.B < 0.0 then
         T.argument:= (3.0*NPi)/2.0;
      else
         T.argument:= 0.00;
      end if;
      return T;
   end Polar;

   ------------
   -- Equals --
   ------------
   function Equals(L1, L2: in T_List_Static) return Boolean is
      I:Integer:= L1.Data'First;
      J:Integer:= L2.Data'First;
   begin
      if L2.count = L1.count and L1.count /= 0 then
         while I <= L1.count loop
            if L2.Data(I) /= L1.Data(I) then
               return false;
            end if;
            I:= I+1;
            J:= J+1;
         end loop;
      elsif L1.count = 0 and L2.count = 0 then
         return true;
      elsif L1.count /= L2.count then
         return false;
      end if;
      return true;
   end Equals;

   -------------------
   -- DeleteElement --
   -------------------
   procedure DeleteElement
     (num: in Integer;
      L: in out T_List_Static)
   is
      I:Integer:= l.Data'First;
      revised:Boolean:= false;
   begin
      while revised = false loop
         revised:= true;
         I:= L.Data'First;
         if L.count > 1 then
         while I <= L.count+1 loop
            if L.Data(I) = num then
               L.Data(I..L.count):= L.Data(I+1..L.count+1);
               L.count:= l.count-1;
               revised:= false;
            end if;
            I:=I+1;
            end loop;
         elsif L.count = 1 and L.Data(L.Dato'First) = num then
            L.count := 0;
         else
            Put("No more elements to sort");
         end if;
      end loop;
   end DeleteElement;

   -----------------
   -- InsertInPos --
   -----------------
   procedure InsertInPos
     (num, pos: in Integer;
      L: in out T_List_Static)
   is
   begin
      if L.count > 1 then
         L.Data(pos+1..L.count+1):= L.Data(pos..l.count);
         l.count:= l.count+1;
         l.Data(pos):= num;
      elsif L.count = 1 and pos = ((L.Data'First)+1) then
         L.count:= L.count +1;
         L.Data(pos) := num;
      elsif L.count = 0 and pos = 1 then
         l.count:= l.count +1;
         L.Data(L.count):= num;
      end if;
   end InsertInPos;

   ------------
   -- PosMax --
   ------------
   function PosMax (L: in T_List_Static) return Integer is
      I:Integer:= l.Data'First;
      aux:Integer:= L.Data(I);
      pos:Integer:= I;
   begin
      while I <= L.count loop
         if aux < L.Data(I) then
            aux:= L.Data(I);
            pos:= I;
         end if;
         I:= I+1;
      end loop;
      return pos;
   end PosMax;

   --------------
   -- Position --
   --------------
   procedure Position
     (M: in T_Matrix;
      Num: in Integer;
      Row,Col: out Integer)
   is
      found: Boolean:= false;
   begin
      Row:= 0;
      Col:= 0;
      for i in M'Range(1) loop
         for j in M'Range(2) loop
            if M(i,j) = Num and found = false then
               Row:= i;
               Col:= j;
               found:= true;
            end if;
         end loop;
      end loop;
   end Position;

   ---------
   -- Max --
   ---------
   procedure Max (M: in T_Matrix; Max,Row,Column: out Integer) is
   begin
      Row:= M'First(1);
      Column:= M'First(2);
      Max:= M(M'First(1),M'First(2));
      for i in M'Range(1) loop
         for j in M'Range(2) loop
            if M(i,j) > Max then
               Row:= i;
               Column:= j;
               Max:= M(i,j);
            end if;
         end loop;
      end loop;
   end Max;

end ListsExercises;
