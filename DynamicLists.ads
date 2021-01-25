package DynamicLists is

   Type T_Node_Integers;
   Type T_List_Dynamic is access T_Node_Integers;
   type T_Node_Integers is record
      Info: Integer;
      Sig: T_List_Dynamic;
   end record;

   function IsInList(L: in T_List_Dynamic; N: in Integer) return Boolean;
   -- Post: Result = True <--> N is in L.
   
   function Position(L: in T_List_Dynamic; N: in Integer) return Natural;
   -- Post: Result is the position of N (starting at 1) in L. If it is not, Result = Integer'Last.
   
   procedure Prepend(L: in out T_List_Dynamic; Num: Integer);
   -- Post: L includes Num as the first element of the list.
   
   procedure Append(L: in out T_List_Dynamic; Num: Integer);
   -- Post: L includes Num as the last element of the list.
   
   procedure InsertInPos(L: in out T_List_Dynamic; Num: in Integer; Pos: in Integer);
   -- Post: L includes Num in the indicated Position.
   --       If Pos <1, in the first position.
   --       If pos> Length of L in last position.
   
   procedure DeleteElement(L: in out T_List_Dynamic; Num: in Integer);
   --Post: From L the first appearance of num (if any) has disappeared.
   
   procedure Concatenate(L1, L2: in out T_List_Dynamic);
   --Post: L1 includes L2 at the end.
   
   Procedure Invert(L: in out T_List_Dynamic);
   --Post: L is the initial list with the elements in reverse order.

end DynamicLists;
