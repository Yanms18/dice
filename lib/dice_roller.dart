import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});
  
  @override
  State<Diceroller> createState () {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<Diceroller> {
  
  var currentDiceRoll = 2;
  // var activeDiceImage = 'C:/Users/user/Desktop/flutterproj/dice/assets/images/dice-1.png';
   
   void rolldice() {
    setState(() {
          currentDiceRoll = randomizer.nextInt(6) + 1;
      //  activeDiceImage = 'C:/Users/user/Desktop/flutterproj/dice/assets/images/dice-$diceRoll.png';
    });
   
   }
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
        children: [ 
          Image.asset(
            'C:/Users/user/Desktop/flutterproj/dice/assets/images/dice-$currentDiceRoll.png',
              width: 200
            ),
            ElevatedButton(
              onPressed: rolldice,
              style: ElevatedButton.styleFrom(
                // maximumSize: const Size(3, 3),
                foregroundColor: Colors.yellow,
                backgroundColor: Colors.black,
                shape: const BeveledRectangleBorder(),
                padding: const EdgeInsets.only(top: 0, ),
                textStyle: const TextStyle(
                  fontSize: 15,
                )
              ), 
              child: const Text('Roll Dice'),
              )
            ],
          );
  }
    
}
