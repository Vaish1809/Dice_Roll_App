import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();
//stateful widget we use createState method instead of build method in stateless widget
//build (method returns a widget)
//createState(method returns  state)
class DiceRoller extends StatefulWidget{
const DiceRoller({super.key});
  State<DiceRoller> createState(){
   return _DiceRollerState();
  }
}
// _ means private even if i import this DiceRoller class it wont be able to acess this _DiceRollerState its provste and is used only by DIceROller when it executes

//class _DiceRollerState extends State<DiceRoller> {
 // var activeDiceImage = 'assets/images/dice-images/dice-2.png';
// void rollDice() {
//   var diceRoll = Random().nextInt(6)+1;// 7 is exclueded
//   setState(() {
//    activeDiceImage = 'assets/images/dice-images/dice-$diceRoll.png'; 
//   });
  class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 3;
void rollDice() {
  setState(() {
    //here everythimr dice is rolled a new random object is created which is inefficient hence we create it only once and then keep ading valeus to it
   //currentDiceRoll = Random().nextInt(6)+1;// 7 is exclueded
      currentDiceRoll = randomizer.nextInt(6)+1;// 7 is exclueded
 
 
  });
  
}
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              //activeDiceImage
              'assets/images/dice-images/dice-$currentDiceRoll.png',

              width: 200,
            ),
            const SizedBox(
                height:
                    20), //add space fixed size if has contnet itr wont wide it will cut off
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                //padding: cnst EdgeInsets.only(top: 20),
                foregroundColor: Color.fromARGB(255, 7, 36, 47),
                textStyle: const TextStyle(fontSize: 30 ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
  
}