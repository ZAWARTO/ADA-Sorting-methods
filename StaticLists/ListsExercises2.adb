with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
package body ListsExercises2 is

   -------------
   -- Common --
   -------------
   function Common(V1,V2: in T_vector_Integers) return Natural is
      I,J:Integer;
      Common:Natural:= 0;
   begin
      I:= V1'First;
      J:= V2'First;
      while I < V1'Last+1 and J < V2'Last+1 loop
         if V1(I) = V2(J) then
            Common:= Common + 1;
            I:= I+1;
            J:= J+1;
         elsif V1(I) > V2(J) then
            J:= J+1;
         elsif V1(I) < V2(J) then
            I:= I+1;
         end if;
      end loop;
      return Common;
   end Common;

   -------------
   -- Encrypt --
   -------------
   procedure Encrypt
     (N,Key: in T_Vector_Integers;
      Num: out T_Vector_Integers)
   is
      J:Integer;
   begin
      Num:= (others =>0);
      J:= Key'Last;
      for I in reverse N'Range loop
         Num(((Num'Last))-(Key'Last - Key(J))):= N(I);
         J:= J-1;
      end loop;
   end Encrypt;

   --------------------
   -- InsertInMiddle --
   --------------------
   procedure InsertInMiddle(L: in out T_List_Static; Num: in Integer)
   is
      aux:Integer;
   begin
      if (L.count rem 2) = 0 and L.count > 1 and L.count < L.Data'Last then
         L.Data(((L.count/2) + 1)+1..L.Count+1):= L.Data(((L.count/2) + 1)..L.count);
         aux:= L.Data((L.count/2) + 1);
         L.Data((L.count/2) + 1):= Num;
         L.Data(((L.count/2) + 1)+1):= aux;
         L.count:= L.count+1;
      elsif L.count = 0 then
         L.Data(l.Data'First):= Num;
         L.count:= L.count + 1;
      end if;
   end InsertInMiddle;

   ------------------
   -- DeleteMiddle --
   ------------------
   procedure DeleteMiddle(L: in out T_List_Static) is
   begin
      if (L.count rem 2) /= 0 and L.count > 1 then
         L.Data(((L.count/2) + 1)..L.Count):= L.Data(((L.count/2) + 1)+1..L.count+1);
         L.count:= L.count - 1;
      elsif L.count = 1 then
         L.count := L.count - 1;
      end if;
   end DeleteMiddle;

   -------------------
   -- GetNeighbours --
   -------------------
   procedure GetNeighbours (C: in T_Community;R:out T_Skyscraper) is
   begin
      R:= (others => (others => 0));
      for I in C'Range loop
         if C(I).door = 'A' then
            R(C(I).floor,'A') := R(C(I).floor,'A') + 1;
         elsif C(I).door = 'B' then
            R(C(I).floor,'B') := R(C(I).floor,'B') + 1;
         elsif C(I).door = 'C' then
            R(C(I).floor,'C') := R(C(I).floor,'C') + 1;
         elsif C(I).door = 'D' then
            R(C(I).floor,'D') := R(C(I).floor,'D') + 1;
         elsif C(I).door = 'E' then
            R(C(I).floor,'E') := R(C(I).floor,'E') + 1;
         elsif C(I).door = 'F' then
            R(C(I).floor,'F') := R(C(I).floor,'F') + 1;
         elsif C(I).door = 'G' then
            R(C(I).floor,'G') := R(C(I).floor,'G') + 1;
         elsif C(I).door = 'H' then
            R(C(I).floor,'H') := R(C(I).floor,'H') + 1;
         elsif C(I).door = 'I' then
            R(C(I).floor,'I') := R(C(I).floor,'I') + 1;
         elsif C(I).door = 'J' then
            R(C(I).floor,'J') := R(C(I).floor,'J') + 1;
         end if;
      end loop;
   end GetNeighbours;

   --------------------
   -- GetConsumption --
   --------------------
   procedure GetConsumption 
      (E: in T_Building;
      Consumption_Electrical: out Float;
      Consumption_Gas: out T_Average_Consumption_Per_Door)
   is
     Inhabitants:Natural:= 0;
     InhabitantsDoor:Natural:= 0;
   begin
      Consumption_Gas:= (others => 0.0);
      Consumption_Electrical:= 0.0;
      for I in E'Range(1) loop
         for J in E'Range(2) loop
            Inhabitants:= Inhabitants + E(I,J).Inhabitants;
            InhabitantsDoor:= InhabitantsDoor + E(I,J).Inhabitants;
            Consumption_Electrical:= Consumption_Electrical + E(I,J).Consumption_Electrical;
            Consumption_Gas(I):= Consumption_Gas(I) + E(I,J).Consumption_Gas;
         end loop;
         if InhabitantsDoor > 0 then
            Consumption_Gas(I):= Consumption_Gas(I) / (Float(InhabitantsDoor));
            InhabitantsDoor:= 0;
         end if;
      end loop;
      if Inhabitants > 0 then
         Consumption_Electrical:= Consumption_Electrical / (Float(Inhabitants));
      end if;
   end GetConsumption;
   
end ListsExercises2;
