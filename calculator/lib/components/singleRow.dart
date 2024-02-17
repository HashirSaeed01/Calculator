import 'package:flutter/material.dart';
import 'package:calculator/components/button.dart';
import 'package:calculator/utilities/colors.dart' as colors;

class CalculatorButtonsRow extends StatelessWidget {

   


   CalculatorButtonsRow({
    Key? key,
    required this.requiredRow
  }) : super(key: key);

  final double requiredRow;



  @override
  Widget build(BuildContext context) {


     double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

     double generalButtonWidth = screenWidth * 0.2;


if (requiredRow == 1) {
    return
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: MyCircularButton(
                 UniqueKey(), 
                        colors.MyColors.Grey, 
                        generalButtonWidth, 
                        generalButtonWidth, 
                         
                        returnText(Colors.black, generalButtonWidth * 0.4, 'AC')
                         ),
             ),
           
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.Grey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.black, generalButtonWidth * 0.4, '+/-')
            ),
       ),
        

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.Grey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.black, generalButtonWidth * 0.4, '%')
            ),
         ),
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
               UniqueKey(), 
                      colors.MyColors.Orange, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '÷')

            
          ),
       ),
      ],
    );
} else if (requiredRow == 2 ){ 

 return
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: MyCircularButton(
                 UniqueKey(), 
                        colors.MyColors.DarkGrey, 
                        generalButtonWidth, 
                        generalButtonWidth, 
                         
                        returnText(Colors.white, generalButtonWidth * 0.4, '7')
                         ),
             ),
           
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.DarkGrey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '8')
            ),
       ),
        

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.DarkGrey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '9')
            ),
         ),
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
               UniqueKey(), 
                      colors.MyColors.Orange, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, 'x')
            
          ),
       ),
      ],
    );
} else if (requiredRow == 3 ){ 

 return
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: MyCircularButton(
                 UniqueKey(), 
                        colors.MyColors.DarkGrey, 
                        generalButtonWidth, 
                        generalButtonWidth, 
                         
                        returnText(Colors.white, generalButtonWidth * 0.4, '4')
                         ),
             ),
           
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.DarkGrey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '5')
            ),
       ),
        

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.DarkGrey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '6')
            ),
         ),
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
               UniqueKey(), 
                      colors.MyColors.Orange, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '-')
            
          ),
       ),
      ],
    );
} else if (requiredRow == 4 ){ 

 return
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: MyCircularButton(
                 UniqueKey(), 
                        colors.MyColors.DarkGrey, 
                        generalButtonWidth, 
                        generalButtonWidth, 
                         
                        returnText(Colors.white, generalButtonWidth * 0.4, '1')
                         ),
             ),
           
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.DarkGrey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '2')
            ),
       ),
        

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.DarkGrey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '3')
            ),
         ),
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
               UniqueKey(), 
                      colors.MyColors.Orange, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '+')
            
          ),
       ),
      ],
    );
} else if (requiredRow == 5 ){ 

 return
     Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
           
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: MyCircularButton(
                 UniqueKey(), 
                        colors.MyColors.DarkGrey, 
                        generalButtonWidth * 2.38, 
                        generalButtonWidth, 
                         
                        returnText(Colors.white, generalButtonWidth * 0.4, '0')
                         ),
             ),
           
        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
              UniqueKey(), 
                      colors.MyColors.DarkGrey, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '.')
            ),
       ),
        

        

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: MyCircularButton(
               UniqueKey(), 
                      colors.MyColors.Orange, 
                      generalButtonWidth, 
                      generalButtonWidth, 
            
                      returnText(Colors.white, generalButtonWidth * 0.4, '=')
            
          ),
       ),
      ],
    );
} else { 
  return Text('Error');
}


  
 
 
 
 
  }
















   Text returnText(Color textColor, double sizeFont, String buttonString) { 
    

   
return Text(
      buttonString, 
      style: TextStyle(
        color: textColor, 
        fontSize: sizeFont, 
        fontWeight: FontWeight.bold
        ),

     );
  }
}
