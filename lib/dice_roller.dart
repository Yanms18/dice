import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {


  var diceRollNO= 1;
  

  void rollDice() {
   
    setState(() {
     diceRollNO =  Random().nextInt(6) + 1;
    });


// this is a 2nd option by focusing on enitre path instead of the number

  // var activeDice= "assets/images/dice-1.png";
  

  // void rollDice() {
  //  var diceRoll =  Random().nextInt(6) + 1;
  //   setState(() {
  //     activeDice = 'assets/images/dice-$diceRoll.png';
  //   });
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$diceRollNO.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 28)),
              child: const Text("Roll dice"),
            ),
          ],
        );
  }
}