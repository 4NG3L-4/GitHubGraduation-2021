#### Arrays manipulation:

the array is a data structure , which store a 
fixed-size sequential collection of elements of the same type.
All arrays consist of contiguous memory locations. 
The lowest address corresponds to the first element 
and the highest address to the last element.
To declare an array in Pascal, we  either declare 
the type and then create variables of that array 

  >type
   array-type-name = Array[n..m] of element-type;
  var
    array_var_name :array-type-name

or directly declare the array variable:
 
>var 
arrayName :Array[n..m] of element-type;

#### exemple:
In the above example  we will :
+ declare an array 
+ initialize the elements of that's array
+ print out each array element's value

>program exempleArrays;
   var
 (* declare an array  of 9 integers *)
      a: array [1..9] of integer;
      i, j: integer;
   begin
(* initialise the array's element by the value 1*)      
   for i := 1 to 9 do
       a[ i ] := 1;   
(* print out each array element's value *)
   
>   for j:= 1 to 9 do
      writeln('Element[', j, '] = ', n[j] );
end. 


#### exercice:
Write a program in pascal wich intialise an array with the above value: 1,10,9,7,11 and defin the maximum,minimum element and the summe of all elements of the the array  
#### solution:
>program exerciceSolution;
>
>  var 
     arr:Array[1..5]of integer;
     i,sum,min,max:integer;
>
> begin
  (*the initialisation of the array's elements*)
     arr[1]:=1;
     arr[2]:=10;
     arr[3]:=9;
     arr[4]:=7;
     arr[5]:=11;
 (*intialisation ofsum,max,min *)
  sum:=0;
  max:=arr[1];
  min:=arr[1];
>
> for i:=1 to 5 do
    begin
     (*searching for the maximum and the minimum in this array *)
       if max<arr[i] then max:=arr[i];
       if min>arr[i] then min:=arr[i];
         (*the calcule of the summe*) 
       sum:=sum+arr[i];
    end;
  writeln('the maximum element is',max,
        'the minimum element is,min, 
        'the summe of all elements of the the array is',sum)
end.




