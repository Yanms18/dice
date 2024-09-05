import 'package:flutter/material.dart';

import 'package:dice/gradient_cont.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 99, 44, 29), Color.fromARGB(26, 255, 255, 255)),
    
      ),
    ),
  );
}


