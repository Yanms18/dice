import 'package:flutter/material.dart';


class StyledT extends StatelessWidget {
  const StyledT (this.text, {super.key});
  
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255), fontSize: 28),
            );
    
  }
}
