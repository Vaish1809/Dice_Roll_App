//custom widget
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';
///ctrl shift p
///alt shift f to format
///ctrl space for recommendation
//**vvvvimp***
//StatelessWIdget- when we want only static pages when data in the pages is already fed and it doesnt change
//StatefulWidget - alooows tus to manage the state or data the ui changes here when data in the pages contaantly change while pressing button or hovering etc
//import 'package:flutter_application_1/styled_text.dart';
var startAllignment = Alignment.topLeft;
var endAllignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  // const GradientContainer(this.color1,this.color2,{super.key});
  //const GradientContainer.purple({super.key});
  // color1 = Colors.blueGrey,
  //color2= Colors.white10;
  //final Color color1;
  //final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [Color.fromARGB(255, 81, 207, 223), Color.fromARGB(31, 183, 187, 64)],
          begin: startAllignment,
          end: endAllignment,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
