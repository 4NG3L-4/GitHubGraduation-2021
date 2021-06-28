import 'package:flutter/material.dart';
import 'package:our_app/Courses/linkedlist/linked_list.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/components/RoundedButton.dart';

class ArraysScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xFF424874), const Color(0xFFA6B1E1)],
                ),
              ),
            ),
            SingleChildScrollView(
              //widthFactor: double.infinity,
              //heightFactor: double.infinity,
              //box blanc
              child: Card(
                color: myLightWhite,
                margin: EdgeInsets.only(top: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      //partie cours
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Arrays manipulation: \n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '  the array is a data structure , which store a fixed-size sequential collection of elements of the same type. \n\ All arrays consist of contiguous memory locations. \n\ The lowest address corresponds to the first element  and the highest address to the last element. \n\ To declare an array in Pascal, we  either declare the type and then create variables of that array \n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n\ >type \n\     array-type-name = Array[n..m] of element-type; \n\      var \n\        array_var_name :array-type-name  \n\ ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' \n\ or directly declare the array variable:\n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n\ >var\n\  arrayName :Array[n..m] of element-type; \n\ ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //exemple
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Expanded(
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                //mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Exemple:\n\ ',
                                            style: TextStyle(
                                              color: myLightWhite,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //white box exemple
                                  Container(
                                    child: Card(
                                      color: myLightWhite,
                                      margin: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'In the above example  we will : \n\ + declare an array  \n\ + initialize the elements of that\'\s array \n\+ print out each array element\'\s value \n\ ',
                                                      style: TextStyle(
                                                        color: myDarkBlue,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  //end of white box exemple
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                '>program exempleArrays;\n\   var (* declare an array  of 9 integers *)\n\  a: array [1..9] of integer; \n\   i, j: integer; \n\    begin \n\ (* initialise the array\n\'s element by the value 1*)    \n\for i := 1 to 9 do \n\    a[ i ] := 1;   \n\  (* print out each array element\'\s value *)\n\  >   for j:= 1 to 9 do\n\    writeln(\'\Element[\'\, j, \'\] = \'\, n[j] );\n\ end. \n\ ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //exercice
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              //mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Practice \n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 18,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'Write a program in pascal wich intialise an array with the above value: 1,10,9,7,11 and defin the maximum,minimum element and the summe of all elements of the the array  \n\ ',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //analyse
                                Container(
                                  child: Card(
                                    color: myLightWhite,
                                    margin: EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'solution: \n\ ',
                                                    style: TextStyle(
                                                      color: myDarkBlue,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '>program exerciceSolution;\n\  >  var\n\    arr:Array[1..5]of integer;\n\    i,sum,min,max:integer;\n\  > begin\n\    (*the initialisation of the array\n\'s elements*)\n\     arr[1]:=1;\n\    arr[2]:=10;\n\     arr[3]:=9;\n\    arr[4]:=7;\n\     arr[5]:=11;\n\  (*intialisation ofsum,max,min *)  \n\ sum:=0;\n\  max:=arr[1];\n\   min:=arr[1];\n\ > for i:=1 to 5 do\n\    begin\n\     (*searching for the maximum and the minimum in this array *)\n\       if max<arr[i] then max:=arr[i];\n\       if min>arr[i] then min:=arr[i];\n\         (*the calcule of the summe*) \n`\       sum:=sum+arr[i];\n\    end;\n\  writeln(\'\the maximum element is\'\,max,\n\        \'\the minimum element is,min, \n\        \'\the summe of all elements of the the array is\'\,sum) \n\end.\n\ ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 220),
                        width: 120,
                        child: RoundedButton(
                          color: myDarkBlue,
                          text: 'Next',
                          textColor: myLightWhite,
                          sizee: 14,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LinkedlistScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
