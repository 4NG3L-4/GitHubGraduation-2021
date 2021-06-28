# Trees Course :
A tree is a nonlinear data structure, compared to arrays, linked lists, stacks and queues which are linear data structures. A tree can be empty with no nodes or a tree is a structure consisting of one node called the root and zero or one or more sub trees.
Spanning Trees and shortest path trees are used in routers and bridges respectively in computer networks. As a workflow for compositing digital images for visual effects.
 
A tree is a representation of the non-linear data structure. A tree can be shown using different user-defined or primitive types of data. We can use arrays, and classes connected lists or other kinds of data structures to implement the tree. It is a group of interrelated nodes.
In computer science, tree traversal (also known as tree search and walking the tree) is a form of graph traversal and refers to the process of visiting (checking and/or updating) each node in a tree data structure, exactly once. Such traversals are classified by the order in which the nodes are visited.
- ## Binary Tree :
A tree whose elements have at most 2 children . Since each element in a binary tree can have only 2 children, we typically name them the left and right child.





 












- ## Binary Search tree:
-Sorted tree
 
-Val(leftchild) < Val(root) < Val(rightchild)


                     50

	         30          70

	    20      40    60      80

	        34     45 	  



 - ## Reading  a tree: (parcours):
                     A

             B                I
                                                           C         F              J             M

                                                        D    E   G    H      K     L      N        O   	                      
                                                       
                                                    
- ### Parcours en largeur:
level by level (left to right): A,B,I,C,F,J,M,D,E,G,H,K,L,N,O

- ### Parcours en profondeur:
  
  
- #### 1-Parcours en pre-fixé: 
   root – left child – right child.
   A,B,C,D,E,F,G,H,I,J,K,L,M,N,O

- #### 2-Parcours infixe:
  left child,root,right child:
D,C,E,B,G,FH,A,K,J,L,I,N,M,O

- #### 3-Parcours Postfixe:
  left child,right child,root:
  D,E,C,G,H,F,B,K,L,J,N,O,M,I,A


- ## Tree display :
>Procedure AFFPost(P=);     
Begin  
     If P <>Nil then   
   Begin   
     AFFPost(P^.leftchild);//1   
     AFFPost(P^.rightchild);//2  
     Writeln(P^.s);//3  
    End;  
End;  
//for AFFINF(P=T)	1-3-2   
//for AFFPRE(P=T)	3-2-1




- ## Tree size:
  
>Function Size(P=T):integer;  
Begin    
 If P=nil then Size:=0 else
 Size:=1+Size(P^.leftchild)+Size(P^.rightchild);   
End;   

- ## Tree height:
>Function height(P=T):integer;  
Begin  
If P=nil then height:=0; else
Height:=1+max(height(P^.leftchild),height(P^.rightchild));    
End;  

- ## Search:
>Function Find (P=T;N:integer):Boolean;   
Begin   
If P=nil then Find:=False  
Else If P^.Val:=N then Find:=True  
Else Find:=Find(P^.leftchild) or Find:=( P^.rightchild);   
End;  

 - ## Insertion:
 >Procedure insert(var P=T,V:integer);   
Begin  
If  P=Nil Then   
Begin  
New(P);  
P^.leftchild=nil;  
P^.rightchild=nil;  
P^.val=V;  
End;  
Else If V<P^.valThen insert(P^.leftchild,V)   
Else insert(P^.rightchild,V);  
End;


- ## Highest  value:
>Function High(P=T):T;   
Begin  
If P= nil then P^.leftchild=nil   
Else if P^.rightchild=nil then High=P   
Else High:=High(P^.righttchild);  
End; 
