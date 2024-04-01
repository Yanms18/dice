

import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class Gradientcont extends StatelessWidget {
  const Gradientcont(this.color1, this.color2, {super.key}); 

  const Gradientcont.purple({super.key}) : 
                          color1 = Colors.deepPurple,
                          color2 = Colors.deepOrange;
    final Color color1;
    final Color color2;

    

  @override
  Widget build(context) {
   return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [color1, color2],
        begin: startAlign,
        end: endAlign,
        )
    ),
    child: const Center(
      child: Diceroller(),
        ),
      );
  }
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body:gradientcontainer(

//         )
//       )
//     )
//   )
// }
