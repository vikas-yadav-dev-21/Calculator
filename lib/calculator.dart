import 'package:calculator/components/button_component.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  var userinput='';
  var result='';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(userinput,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,

                          ),),
                          Text(result,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,

                            ),),
                        ],
                      ),
                    ],
                  ),
                )),

            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Row(
                    children: [
                      CalcButton(title: "AC",
                      onPress: (){
                        userinput="";
                        result="";
                        setState(() {

                        });
                      },),
                      CalcButton(title: "(",
                          onPress: (){
                        userinput+="(";
                        setState(() {

                        });
                          }),
                      CalcButton(title: ")",
                          onPress: (){
                            userinput+=")";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "/",color: Colors.orange,
                          onPress: (){
                            userinput+="/";
                            setState(() {

                            });
                          }),

                    ],
                  ),

                  Row(
                    children: [
                      CalcButton(title: "7",
                          onPress: (){
                            userinput+="7";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "8",
                          onPress: (){
                            userinput+="8";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "9",
                          onPress: (){
                            userinput+="9";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "x",color: Colors.orange,
                          onPress: (){
                            userinput+="x";
                            setState(() {

                            });
                          }),

                    ],
                  ),

                  Row(
                    children: [
                      CalcButton(title: "4",
                          onPress: (){
                            userinput+="4";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "5",
                          onPress: (){
                            userinput+="5";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "6",
                          onPress: (){
                            userinput+="6";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "-",color: Colors.orange,
                          onPress: (){
                            userinput+="-";
                            setState(() {

                            });
                          }),

                    ],
                  ),

                  Row(
                    children: [
                      CalcButton(title: "1",
                          onPress: (){
                            userinput+="1";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "2",
                          onPress: (){
                            userinput+="2";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "3",
                          onPress: (){
                            userinput+="3";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "+",color: Colors.orange,
                          onPress: (){
                            userinput+="+";
                            setState(() {

                            });
                          }),

                    ],
                  ),

                  Row(
                    children: [
                      CalcButton(title: ".",
                          onPress: (){
                            userinput+=".";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "0",
                          onPress: (){
                            userinput+="0";
                            setState(() {

                            });
                          }),
                      CalcButton(title: "DEL",
                          onPress: (){
                            userinput=userinput.substring(0,userinput.length-1);
                            setState(() {

                            });
                          }),
                      CalcButton(title: "=",color: Colors.orange,
                          onPress: (){
                        equalPress();
                        setState(() {

                        });

                          }),

                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  void equalPress(){

    String finaluserinput=userinput.replaceAll("x", "*");

    Parser parser=Parser();

    Expression expression=parser.parse(finaluserinput);

    ContextModel contextModel=ContextModel();

    double eval= expression.evaluate(EvaluationType.REAL, contextModel);

    result=eval.toString();

  }
}
