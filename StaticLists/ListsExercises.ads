package ListsExercises is
   MaxV: constant integer := 20;
   type T_Vector_Integers is array (Integer range <>) of Integer;
   type T_List_Static is record
      Data: T_Vector_Integers(1..MaxV);
      count: Natural;
   end record;
   type T_Complex_Tri is record
      A,B:Float;
   end record;
   type T_Complex_Polar is record
      module, argument: Float;
   end record;
   type T_Matrix is array (Integer range <>, Integer range<>) of Integer;

   function IsInList(L: in T_List_Static; N: in Integer) return Boolean;
   -- pre: L contains at least one element (L.count >= 1)
   -- items may not follow an order
   -- post: result = True <--> the value N is in L
   function Position (L: in T_List_Static; Num: in Integer) return Integer;
   -- pre: L contains at least one element (L.count >= 1)
   -- the elements do not follow any order. the element being searched does not have to be in L
   -- post: position where N is, and if not, Integer'Last
   function Polar (C: in T_Complex_tri) return T_complejo_polar;
   -- C is a complex in trigonometric form
   -- post: result = the complex number in polar form.
   function Equals(L1, L2: in T_List_Static) return Boolean;
   -- L1 y L2 are two static lists of integers
   -- post: result = true <--> F1=F2 (same number of elements, in the same order)
   procedure DeleteElement (num: in Integer; L: in out T_List_Static);
   -- pre:  num is a possible element of L
   --       L not necessarily complete
   -- post: L is the same if num was not in L
   --       L without the copies of num
   procedure InsertInPos (num, pos: in Integer; L: in out T_List_Static);
   -- pre: the insertion position will be in the range
   --      than the number of elements that the list contains +1
   --      L has at least one free gap
   -- post: if pos is a valid data position, L includes num in that position
   --       and all elements are shifted one position to the right
   --       If pos is not valid, nothing is inserted and L stays the same
   function PosMax (L: in T_List_Static) return Integer;
   -- post: Result = maximum number of those included in L
   procedure Position(M: in T_Matrix; Num: in Integer; Row,Col: out Integer);
   --post: Row = row where Num is (0 if not)
   --      Col = column in which Num is (0 if it is not)
   procedure Max (M: in T_Matrix; Max,Row,Column: out Integer);
   --post: Max = the largest value in the array
   --      Row = the lowest Row in which the maximum is
   --      column = the smallest column in which the maximum is in that row
end ListsExercises;
