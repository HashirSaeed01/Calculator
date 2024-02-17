import 'package:calculator/components/button.dart';
import 'package:calculator/components/singleRow.dart';
import 'package:flutter/material.dart';
import 'package:calculator/utilities/colors.dart' as colors;

class calculatorRow extends StatelessWidget {


    static TextEditingController textEditingController = new TextEditingController();

 static TextEditingController getController() {
    if (textEditingController == null) {
      textEditingController = TextEditingController();
    }
    return textEditingController;
  }


  @override
  Widget build(BuildContext context) {




    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
  resizeToAvoidBottomInset: false,   
         backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: screenWidth*0.9,
                  height: 30,
                  child: TextField(
                     textAlign: TextAlign.right, // Set the text alignment to right
                    decoration: InputDecoration(
                     border: InputBorder.none, // Remove underline here
                    ),
                      controller: textEditingController,
                      onChanged: (value) => {textEditingController.value}, 
                     style: TextStyle(
                      color: Colors.white, 
                      fontSize: 50, 
                      fontWeight: FontWeight.normal
  ),
                      
                      
                      
                      ),
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              CalculatorButtonsRow(requiredRow: 1),
              CalculatorButtonsRow(requiredRow: 2),
              CalculatorButtonsRow(requiredRow: 3),
              CalculatorButtonsRow(requiredRow: 4),
              CalculatorButtonsRow(requiredRow: 5),
              const SizedBox(height: 50)
            ],
          )),
    ));
  }
}
