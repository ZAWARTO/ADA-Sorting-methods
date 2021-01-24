with VectorsExercises2, Ada.Text_IO, Ada.Integer_Text_IO;
use VectorsExercises2, Ada.Text_IO, Ada.Integer_Text_IO;

package body VectorsExercises2 is

   --------------------
   --   IsInVector   --
   --------------------
   function IsInVector
     (V: in T_Vector_Integers;
      N: in Integer)
      return Boolean
   is
   begin
      for I in V'Range loop
         if V(I) = N then
            return true;
         end if;
      end loop;
      return false;
   end IsInVector;

   --------------
   -- Position --
   --------------
   function Position
     (V: in T_Vector_Integers;
      Num: in Integer)
      return Integer
   is
   begin
      for I in V'Range loop
         if V(I) = Num then
            return I;
         end if;
      end loop;
      return Integer'Last;
   end Position;

   -----------------
   --   Equals    --
   -----------------
   function Equals (F1, F2: in T_Date) return Boolean is
   begin
      if F1.Day = F2.Day and F1.Month = F2.Month and F1.Year = F2.Year then
         return true;
      end if;
      return false;
   end Equals;

   ------------------
   --   ToDegrees  --
   ------------------
   function ToDegrees (Degrees: in T_Degrees) return Float is
      aux:Float;
   begin
      aux:= (Float(Degrees.Seconds)) / 3600.00;
      aux:= gradosaux + (Float(Degrees.Minutes) / 60.00);
      aux:= gradosaux + (Float(Degrees.Degrees));
      return aux;
   end ToDegrees;

   -----------------
   --   Equals    --
   -----------------
   function Equals (L1, L2: in T_Vector_Integers) return Boolean is
      I:Integer:= L1'First;
      J:Integer:= L2'First;
   begin
      loop exit when I > L1'Last OR J > L2'Last;
         if L1(I) /= L2(J) then
            return false;
         elsif L1(I) = VACIO and L2(J) = VACIO then
            return true;
         end if;
         I:=I+1;
         J:=J+1;
      end loop;
      if L1'Last /= I-1 or L2'Last/= J-1 then
         return false;
      end if;
      return true;
   end Equals;

   -----------------------
   --   DeleteElement   --
   -----------------------
   procedure DeleteElement
     (pos: in Integer;
      V: in out T_Vector_Integers)
   is
     I:Integer:=pos;
   begin
      if pos >= V'First and pos <= V'Last then
         if pos = V'Last then
            V(pos):= EMPTY;
         elsif V(pos) = EMPTY then
            Put("The element to delete is empty");
         else
            V(pos..V'Last-1):= V(pos+1..V'Last);
            V(V'Last):= EMPTY;
         end if;
      else
         Put("Index doesn't exist");
      end if;
   end DeleteElement;

   ------------------
   -- InsertInPos  --
   ------------------
   procedure InsertInPos
     (num: in Integer;
      pos: in Integer;
      V: in out T_Vector_Integers)
   is
      I:Integer:=V'Last;
      aux:Integer:= pos;
   begin
      if pos >= V'First and pos <= V'Last then
         if V(pos) = EMPTY then
            V(pos) := num;
         else
            for J in V'Range loop
               if V(J) = EMPTY then
                  aux := J;
               end if;
            end loop;
            while I > pos loop
               V(I):=V(I-1);
               I:=I-1;
            end loop;
            V(pos):=num;
         end if;
      else
         Put("Index doesn't exist");
      end if;
   end InsertInPos;

   ------------
   -- MaxPos --
   ------------
   function MaxPos (V: in T_Vector_Integers) return Integer is
      aux:Integer:= V(V'First);
      max:Integer:= V'First;
   begin
      for I in V'Range loop
            if aux < V(I) then
               aux:= V(I);
               max:=I;
            end if;
      end loop;
      return max;
   end MaxPos;
   
end VectorsExercises2;
