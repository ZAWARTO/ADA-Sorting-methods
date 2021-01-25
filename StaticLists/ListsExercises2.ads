package ListsExercises2 is
   type T_Vector_Integers is array (Integer range <>) of Integer;
   MaxV: constant Integer := 30;
   type T_List_Static is record
      Data: T_Vector_Integers(1..MaxV);
      count: Natural;
   end record;

   function Common(V1,V2: in T_vector_Integers) return Natural;
   -- pre: V1 and V2 in ascending order.
   -- post: result = number of common elements of V1 and V2.

   procedure Encrypt(N,Key: in T_Vector_Integers; Num: out T_Vector_Integers);
   -- pre: N is a vector of digits (between 0..9).
   --      Key is a vector with numbers from 1 to size N.
   -- post: Num contains the number with the digits of N using the encryption key.

   procedure InsertInMiddle(L: in out T_List_Static; Num: in Integer);
   -- post: Num is inserted in the middle of L.

   procedure DeleteMiddle(L: in out T_List_Static);
   -- post: L is the starting one without the intermediate element.

   Max: constant Natural := 3546;
   type T_Neighbour is record
      name: String(1..25);
      floor: integer range 1..100;
      door: character range 'A'..'J';
   end record;
   type T_Community is array (1..Max) of T_Neighbour;
   type T_Skyscraper is array (Integer range 1..100, Character range 'A'..'J') of Natural;

   procedure GetNeighbours (C: in T_Community;R:out T_Skyscraper);
   --pre: C contains the data of the community's neighbors.
   --post: R contains the data of how many neighbors there are for each house according to what appears in C.

   type T_House is record
      Consumption_Electrical, Consumption_Gas: Float;
      Inhabitants: Integer;
   end record;

   type T_Building is array (Character range 'A'..'J', Integer range 1..100) of T_House;
   type T_Average_Consumption_Per_Door is array (Character range 'A'..'J') of Float;

   procedure GetConsumption (E: in T_Building;
      Consumption_Electrical: out Float;
      Consumption_Gas: out T_Average_Consumption_Per_Door);
      --pre: E contains an array of houses.
      --post: Consumption_Electrical contains the total electrical consumption media while.
              Consumption_Gas contains only the gas consumption per door letter.
              
end ListsExercises2;
