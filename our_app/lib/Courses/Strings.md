# Stings manipulation:

 Strings are defined as an array of characters. The difference between a character array and a string is the string is terminated with a special character ‘\0’.

Declaring a string is as simple as declaring a one dimensional array. Below is the basic syntax for declaring a string in Pascal:

> S: string;
S: array [10] of char;

### example:

> var
  s : string;
begin
  s:='Hello, dear';
  writeln(s);
  s[1]:='J';    { Replace the first character with J }
  s[5]:='y';    { Replace the fifth character with y }
  writeln(s);   { Jelly, dear }
  writeln('The length of s is ',ord(s[0]));
end.

### Practice: RendezV program
 We introduce the type temps_t, the procedures ecriture(t : temps_t) and lecture(t : temps_t), and the function calc_ns(t : temps_t): integer.
 And the types:
 > CONSTMaxRdv= 20;
 TYPERdv_t= Recordtitre: string[63];
 debut,fin : temps_t;
 End;
 TabRdv_t= array[1..MaxRdv]of Rdv_t;

#### 1)Input:
Create a procedure CreateRdv(r) which read from the keyboard the input of r:Rdv_t; by calling the procedure lecture()
#### 2)Display:
Create a procedure AffichRdv(r) which display in the scree the fields of r:Rdv_t by calling ecriture()
#### 3)Overlapping: 
Create a boolean function  Chevauche(r1,r2) which send TRUE if the r1,r2:Rdv_t overlap.
#### 4)"TestJournee":
Create a procedure TestJournee(j,n) which detects and display the "rendez-vous" which overlap in one day, from the n "rendez-vous" stocked in j:TabRdv_t.
5)Principal program:
The principal program "RendezV program" ask a number of "rendez-vous", read it from the keyboard, and display the list of "rendez-vous" which overlap.