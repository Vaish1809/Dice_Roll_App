
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

var startAllignment = Alignment.topLeft;
var endAllignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});


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
