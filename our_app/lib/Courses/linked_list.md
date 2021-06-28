 #### introduction to the pointers:
 every variable is a memory location and every memory location has its address defined which can be accessed using the name of the pointer variable, which denotes an address in memory.

  A pointer is a dynamic variable, whose value is the address of another variable.
  #### exemple:

In the implementation below we will intialise a pointer and use it.

>Program Pointers_Example;
  Var
>	
>(*we are decalring an integer pointer*)
>
>   int_ptr : ^Integer;
>
> Begin
>
>(*Dynamically creates and allocates space for int_ptr*)
	new(int_ptr); 
>
>(*stores the number 50 in the memory location pointed to by int_ptr*)
>	
>    int_ptr^ := 50;
	 Writeln('The pointer is pointing to a memory location storing', int_ptr^);
	 int_ptr^ := int_ptr^ + 1;
	 Writeln('Now it is increased by 1:', int_ptr^);
> 
>(*the integer pointer is disposed of when calling dispose(),
When a pointer is disposed of, it won't be possible to use it again*)
>
>	dispose(int_ptr^);
	Writeln('The pointer has no more significance: ', int_ptr^);
>
>End.

- assign a NIL value to a pointer variable in case you do not have exact address to be assigned. A pointer that is assigned NIL points to nowhere.

 #### Introduction to Linked Lists:
 
Linked lists make vast use of pointers since each node points to another in memory.the head  is the pointer to the first node and the tail  points to the last node.

#### exemple:
we will going to use a student record as our record structure to be stored in a linked list

>Type
(*declaration of the linkedlist*)
	TStudRec = Record
		Name, Surname : String[450];
		ID, Age : Integer;
>	
>	End;
>
>	TNodePtr = ^TNode;
	TNode = Record
		StudRec : TStudRec;
		NodePtr : TNodePtr;
	End;
Var
(*The head helps us find our first node in the list whereas the tail helps us to keep track of the last node in the list*) 
> 
> 	Head, Tail : TNodePtr;
>
>(*The SampRec will be used to pass it as an argument to linked list routines*)
>
>	SampRec : TStudRec;

 Now we do the initialisation part :

>Procedure InitLinkedList;
Begin
	Head := nil;
	Tail := Head;
End;

#### exercice :
 write a procedure in pascal wich will accept a student record that's we use before and add the new node to the end of the list

#### solution:

>Procedure AddNode(StudRec : TStudRec);
>
>(*
-We first test if the Head is nil. If it as such, then it means that our list is still empty and what we should do is create a new Head and Tail and set Head to point to the first node.
 Otherwise, if the linked list is not full, the tail dereferences to the last node's pointer and set it to point
 to the new node
-we should update the Tail and set it to point to the most recent added node *)
>
>Var
	Node : TNode;
>
>Begin
	Node.StudRec := StudRec;
	New(Node.NodePtr);
	If Head = nil Then
	Begin
		New(Head);
		New(Tail);
		Head^ := Node;
	End Else
	Begin
		Tail^.NodePtr^ := Node;
	End;
	Tail^ := Node;
End;



 

