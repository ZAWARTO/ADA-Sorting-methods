package VectorsExercises2 is
   subtype T_Day is Integer range 1..31;
   type T_Month is (January, February, March, April, May, June, July, August, September, October, November, December);
   type T_Date is record
      Day: T_Day;
      Month: T_Month;
      Year: Positive;
   end record;
   type T_Degrees is record
      Degrees, Minutes, Seconds: Natural;
   end record;

   EMPTY: constant integer := Integer'First;
   type T_Vector_Integers is array (Integer range <>) of Integer;
   type T_Matrix is array (Integer range <>, Integer range<>) of Integer;
   Max_Elem : constant Integer := 100;

   function IsInVector (V: in T_Vector_Integers; N: in Integer) return Boolean;
   -- pre: V contains at least one element (V'Last >= 1)
   -- items may not follow an order
   -- post: result = True <--> the value N is in V
   function Position (V: in T_Vector_Integers; Num: in Integer) return Integer;
   -- pre: V contains at least one element (V'Length >= 1)
   -- the elements do not follow any order. the element being searched does not have to be in V
   -- post: position where N is and, if not, Integer'Last
   function Equals(F1, F2: in T_Fecha) return Boolean;
   -- F1 and F2 are two valid dates
   -- post: result = true <--> F1=F2
   function ToDegrees(Degrees: in T_Degrees) return Float;
   --pre: Natural degrees, minutes and seconds
   --post: result = Grads equivalent to the specified degrees, minutes, and seconds
   function Equals(L1, L2: in T_Vector_Integers) return Boolean;
   -- L1 y L2 are two lists of integers ending in EMPTY
   -- post: result = true <--> F1=F2 (same number of elements, in the same order)
   procedure DeleteElement (pos: in Integer; V: in out T_Vector_Integers);
   -- pre:  pos is a position within the range of the index of V
   --       V not necessarily complete (items in first positions, Integer'first is a sentinel)
   -- post: V equal if the position does not point to a valid data
   --       V without the element of the pos position if there is a valid data
   procedure InsertInPos (num: in Integer; pos: in Integer; V: in out T_Vector_Integers);
   -- pre: V contains N integers (ends in Integer'First)
   --      the insertion position will be in the range
   --      V has at least one free space
   -- post: if pos is a valid data position, V includes num in that position
   --       and all elements are shifted one position to the right
   --       If pos is not valid, nothing is inserted and V stays the same
   function MaxPos (V: in T_Vector_Integers) return Integer;
   -- pre:  Vector has all elements occupied
   -- post: Result = maximum number of those included in V
   
   end VectorsExercises2;
