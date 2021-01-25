with Laboratorio09a, Ada.Text_IO; 
use Laboratorio09a, Ada.Text_IO;
package body Laboratorio09a is

   --------------
   -- IsInList --
   --------------
   function IsInList(L: in T_List_Dynamic; N: in Integer) return Boolean is
      Head: T_List_Dynamic:= L;
   begin
      while Head /= null loop
         if Head.Info = N then
            return true;
         end if;
         Head:= Head.Next;
      end loop;
      return false;
   end IsInList;

   --------------
   -- Position --
   --------------
   function Position(L: in T_List_Dynamic; N: in Integer) return Natural is
      count:Natural:= 1;
      Head: T_List_Dynamic:= L;
   begin
       while Head /= null loop
         if Head.Info = N then
            return count;
         end if;
         Head:= Head.Next;
         count:= count+1;
      end loop;
      return Integer'Last;
   end Position;

   -------------
   -- Prepend --
   -------------
   procedure Prepend(L: in out T_List_Dynamic; Num: Integer) is
      Head: T_List_Dynamic:= L;
   begin
      if Head /= null then
         L:= new T_Node_Integers'(Num,Head);
      else
         L:= new T_Node_Integers'(Num,L);
      end if;
   end Prepend;
   
   ------------
   -- Append --
   ------------
   procedure Append(L: in out T_List_Dynamic; Num: Integer) is
      Head: T_List_Dynamic:= L;
   begin
      if Head = null then
         L:= new T_Node_Integers'(Num,L);
      else
         while Head.Next /= null loop
            Head:= Head.Next;
         end loop;
         Head.Next:= new T_Node_Integers'(Num,null);
      end if;
   end Append;

   -----------------
   -- InsertInPos --
   -----------------
   procedure InsertInPos
     (L: in out T_List_Dynamic;
      Num: in Integer;
      Pos: in Integer)
   is
      Head: T_List_Dynamic:= L;
      Max, count: Natural:= 1;
   begin
      if Head = null then
         L:= new T_Node_Integers'(Num,L);
      elsif Head /= null and Pos <= 1 then
         Prepend(L,Num);
      elsif Head /= null and Pos > 1 then
         while Head /= null loop
            max:= max+1;
            Head:= Head.Next;
         end loop;
         Head:= L;
         if Pos > max then
            Append(L, Num);
         elsif Pos <= max then
            while count < Pos-1 loop
               Head:= Head.Next;
               count:= count+1;
            end loop;
            Head.Next:= new T_Node_Integers'(Num,Head.Next);
         end if;
      end if;
   end InsertInPos;

   -------------------
   -- DeleteElement --
   -------------------
   procedure DeleteElement(L: in out T_List_Dynamic; Num: in Integer) is
      Head: T_List_Dynamic:= L;
      deleted,found: Boolean:= false;
      max,pos,count: Natural:= 1;
   begin
      if Head /= null then
         if Head.Info = Num and Head.Next /= null then
            while Head.Next.Next /= null loop
               Head.Info:= Head.Next.Info;
               Head:= Head.Next;
            end loop;
            Head.Info:= Head.Next.Info;
            Head.Next:= null;
         elsif Head.Info = Num and Head.Next = null then
            Head:= null;
         else
            while Head /= null loop
               if found = false and Head.Info = Num then
                  pos:= max;
                  found:= true;
               end if;
               max:= max+1;
               Head:=Head.Next;
            end loop;
            Head:= L;
            if found = true then
               while count < pos-1 loop
                  Head:= Head.Next;
                  count:= count+1;
               end loop;
               if pos = max then
                  Head.Next:= null;
               else
                  Head.Next:= Head.Next.Next;
               end if;
            end if;
         end if;
      end if;
   end DeleteElement;

   -----------------
   -- Concatenate --
   -----------------
   procedure Concatenate(L1, L2: in out T_List_Dynamic) is
      Head: T_List_Dynamic:= L1;
      Head2:T_List_Dynamic:= L2;
   begin
      if Head = null and Head2 /= null then
         L1:= L2;
      elsif Head /= null and Head2 /= null then
         while Head.Next /= null loop
            Head:= Head.Next;
         end loop;
         Head.Next:= Head2;
      end if;
   end Concatenate;

   ------------
   -- Invert --
   ------------
   procedure Invert(L: in out T_List_Dynamic) is
      Current: T_List_Dynamic:=L;
      Pre: T_List_Dynamic:=null;
      Next: T_List_Dynamic:=null;
   begin
      if Current /= null then
         while Current.Next/= null loop
            Next:= Current.Next;
            Current.Next:= Pre;
            Pre:= Current;
            Current:= Next;
         end loop;
         Next:= null;
         Current.Next:= Pre;
         L:= Current;
      end if;
   end Invert;

end DynamicLists;
