import 'package:flutter/material.dart';
import 'package:calculator/utilities/colors.dart' as colors;

import 'package:math_expressions/math_expressions.dart';

import 'package:calculator/components/calculatorRow.dart' as controllerMe;

class MyCircularButton extends StatelessWidget {
 

   MyCircularButton(Key? key, this.colourButton, this.width, this.height, this.buttonText): super(key: key);



  double width; 
  double height; 
  Color colourButton;

  Text buttonText;

  

  

  @override


  Widget build(BuildContext context) {


   
    return Material(
      
      color: Colors.transparent,
      child: Container (

        width: width,
  height: height,
  decoration: BoxDecoration(
    color: colourButton, // Assuming colourButton is a String representing a color name
    shape:  BoxShape.rectangle, 
    borderRadius: BorderRadius.circular(50)




  ),



        child: IconButton(
          icon: buttonText.data != '0' ? 
             Center(
              
              child: Stack(
                
                children: [
             buttonText
                ],
              ),
            ) : 

               Center(
              
              child: Padding(
                padding: EdgeInsets.only(right: width * 0.55),
                child: buttonText
                
              ),
            ) 

            


            
            ,
          

          color: Colors.white,

        
onPressed: () {
  TextEditingController val = controllerMe.calculatorRow.getController();
  String newValue = buttonText.data as String;

  if (newValue == 'AC') {
    val.clear();
    return;
  } else if (newValue == '=') {
    String expression = val.text;
    // Replace 'x' with '*' for multiplication
    expression = expression.replaceAll('x', '*');
        expression = expression.replaceAll('÷', '/');
;


    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    // Determine the number of decimal places based on the magnitude of the result
    int decimalPlaces = eval.abs() < 1 ? 4 : 2;

    // Format the result with the determined number of decimal places
    String formattedResult = eval.toStringAsFixed(decimalPlaces);

    val.text = formattedResult;
    return;
  } else if (newValue == '+/-') {
    // Flip the sign of the current number
    String currentText = val.text;
    if (currentText.isNotEmpty && currentText[0] == '-') {
      val.text = currentText.substring(1); // Remove the minus sign
    } else {
      val.text = '-' + currentText; // Add a minus sign
    }
    return;
  }

  val.text += newValue;
},














        ),
      ),
    );
  }








 
}

