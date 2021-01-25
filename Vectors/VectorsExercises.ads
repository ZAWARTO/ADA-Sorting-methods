package VectorsExercises is
   type T_Vector is array(Integer range <>) of Integer;
   subtype T_Vector10 is T_Vector(1..10);
   subtype T_Vector16 is T_Vector(1..16);

   procedure Last_Even(V: in T_Vector10; Last_Even: out Integer; Pos: out Natural);
   --Pre: V has ten integers
   --post: ultimo par = Even number of V that is in the highest position of V (0 if none).
   --      pos = position of the last even number in V (if repeated, the highest of them).

   function Multiples_of_the_last(V: in T_Vector10) return Positive;
   --Pre: V has ten integers.
   --post: result = number elements of V that are multiples of V (10).

   function Is_sorted(V: in T_Vector10) return Boolean;
   --Pre: V has ten integers.
   --post: result = true <--> V ordered increasing or V ordered decreasing.

   procedure Separate_digits(Num: In Natural; V: out T_Vector10; odd: out Natural);
   --post: V contains the digits of Num (filling the left side with 0s up to 10 digits).
   --      odd contains how many odd digits Num has.

   function Binary_to_decimal(V: in T_Vector10) return Natural;
   --Pre: V has ten integers representing bits.
   --post: result = decimal number representing the 10 bits of V.

   procedure Rot13(noEncrypted: in STRING; Encrypted: out STRING);
   --Pre: noEncrypted has ten integers.
   --Post: Encrypted contains the input string encrypted with the rot13 algorithm.
   
end VectorsExercises;
