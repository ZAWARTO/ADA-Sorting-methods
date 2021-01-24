with VectorsExercises;
use VectorsExercises;

package body VectorsExercises is
   ----------------
   -- Last_Even  --
   ----------------
   procedure Last_Even
     (V: in T_Vector10;
      Last_Even: out Integer;
      Pos: out Natural)
   is
      found:Boolean:=false;
      result:Integer;
      I: Integer:= V'Length;
   begin
      Last_Even:= 0;
      Pos:= 0;
      while I /= 0 and found = false loop
         result:= V(I) rem 2;
         if result = 0 then
            Last_Even:= V(I);
            Pos:= I;
            found:= true;
         end if;
         I:= I-1;
      end loop;
   end Last_Even;
   ---------------------------
   -- Multiples_of_the_last --
   ---------------------------
   function Multiples_of_the_last (V: in T_Vector10) return Positive is
      last:Integer:= V(V'Last);
      multiples:Positive:= 1;
      I: Integer:= V'Length-1;
      result: Integer;
   begin
      while I /= 0 loop
         if last = 0 then
            multiples:= multiples+1;
            I:= I-1;
         else
            result:= V(I);
            result:= abs result;
            result := result mod ultimo;
            if result = 0 then
               multiples:= multiples+1;
            end if;
            I:= I-1;
         end if;
      end loop;
      return multiples;
   end Multiples_of_the_last;
   -------------------
   --   Is_sorted   --
   -------------------
   function Is_sorted (V: in T_Vector10) return Boolean is
      I: Integer:= V'First;
      asc, des: Boolean:= false; --ascending or descending sorting boolean
      curr:Integer:=V(1);
      next:Integer:=V(2);
   begin
      while I < V'Last - 1 loop
         if curr > next  then
            des := true;
            I:= I+1;
            curr := next;
            next:= V(I+1);
         elsif curr < next then
            asc := true;
            I:= I+1;
            curr := next;
            next:= V(I+1);
         else
            I:= I+1;
            curr := next;
            next:= V(I+1);
         end if;
      end loop;
      if curr < next then
         asc := true;
      elsif curr > next then
         des := true;
      end if;
      if (asc = false and des = false) or (asc = true and des = false) or (asc = false and des = true) then
         return true;
      end if;
      return false;
   end Is_sorted;
   ---------------------
   -- Separate_digits --
   ---------------------
   procedure Separate_digits
     (Num: In Natural;
      V: out T_Vector10;
      odd: out Natural)
   is
      n:Integer:= Num;
      I:Integer:= V'Last;
   begin
      impares:= 0;
      while I > V'First - 1 loop
         V(I):= n rem 10;
         if V(I) rem 2 /= 0 then
            odd:= odd + 1;
         end if;
         n:= n/10;
         I:= I-1;
      end loop;
   end Separate_digits;
   -----------------------
   -- Binary_to_decimal --
   -----------------------
   function Binary_to_decimal (V: in T_Vector10) return Natural is
      n:Natural:= 0;
   begin
      for I in V'Range loop
         if V(I) = 1 then
            n:= n + (2**(V'Last - I));
         end if;
      end loop;
      return n;
   end Binary_to_decimal;
   -----------
   -- Rot13 --
   -----------
   procedure Rot13 (noEncrypted: in STRING; encrypted: out STRING) is
      abc:String:= "abcdefghijklmnopqrstuvwxyz";
      abcm:String:= "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
      found:Boolean:= false;
      aux:Integer;
   begin
      for I in Sin_Cifrar'Range loop
         found:= false;
         for K in abc'Range loop
            if noEncrypted(I) = abc(K) then
               aux:= K + 13;
               if aux > abc'Length then
                  aux:= aux - (abc'Length);
                  encrypted(I):= abc(aux);
                  found:= true;
               else
                  encrypted(I):= abc(aux);
                  found:= true;
               end if;
            end if;
            if noEncrypted(I) = abcm(K) then
               aux:= K + 13;
               if aux > abc'Length then
                  aux:= aux - (abcm'Length);
                  encrypted(I):= abcm(aux);
                  found:= true;
               else
                  encrypted(I):= abcm(aux);
                  found:= true;
               end if;
            end if;
         end loop;
         if found = false then
            encrypted(I):= noEncrypted(I);
         end if;
      end loop;
   end Rot13;
   
end VectorsExercises;
