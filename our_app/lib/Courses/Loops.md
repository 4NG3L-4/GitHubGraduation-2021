# Loops course :
## Loops :
Loops are control structures used to repeat a given section of code a certain number of times
or until a particular condition is met.
The main idea: it is often the case that we want an algorithm to run the same tasks multiple
times.
The sequence is executed as long as the condition is true. The loop terminates when the
condition is False.
Types of loops:
 Visual Basic has three main types of loops:

## **Types of loops :**
## 1. For-do:
- ###  For-do :
   is a repetition control structure that allows you to efficiently write a loop that needs to execute a specific number of times.
- ### Syntax:
  >for &lt; variable-name &gt; := &lt; initial_value &gt; to [down to] &lt;
final_value &gt; do
s ;

Where, the variable-name specifies a variable of ordinal type, called control
variable or index variable; initial_value and final_value values are values that the
control variable can take; and S is the body of the for-do loop that could be a
simple statement or a group of statements.

- ### Exemle:
   >for i:= 1 to 10 do writeln(i);

- ### Flow Diagram:
  ![](https://www.tutorialspoint.com/pascal/images/pascal_for_do_loop.jpg)
  
  
## 2. While-do loop:
- ### A while-do loop:
  statement in Pascal allows repetitive computations till some test condition is satisfied. In other words, it repeatedly executes a target statement as long as a given condition is true.

- ### Syntax:
>while (condition) do S;

Where, condition is a Boolean or relational expression whose value would be true or false and S is a simple statement or group of statements within BEGIN ... END block.

- ### Exemple:
>while number>0 do
begin
   sum := sum + number;
   number := number - 2;
end;
      
When the condition becomes false, program control passes to the line immediately    following the loop.
- ### Flow Diagram:
  ![](https://www.tutorialspoint.com/pascal/images/pascal_while_do_loop.jpg)


## 3. Repeat-until loop: 
- Unlike for and while loops, which test the loop condition at the top of the loop, the repeat ... until loop in Pascal checks its condition at the bottom of the loop.
A repeat ... until loop is similar to a while loop, except that a repeat ... until loop is guaranteed to execute at least one time.
- ### Syntax :
>repeat
   S1;
   S2;
   ...
   ...
   Sn;
until condition;

- ### Exemple:
>repeat
   sum := sum + number;
   number := number - 2;
until number = 0;

The statement(s) in the loop execute once before the condition is tested.
If the condition is false, the flow of control jumps back up to repeat, and the statement(s) in the loop execute again. This process repeats until the given condition becomes true.
- ### Flow Diagram:
  ![](https://www.tutorialspoint.com/pascal/images/pascal_repeat_until_loop.jpg)
 


  




