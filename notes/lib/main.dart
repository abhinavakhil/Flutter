// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notes/gradient_container.dart';
// When calling a fn - argument
// When defining a fn - parameter
// USER ctrl + shift to show more widgets options

const colors = [Colors.greenAccent, Colors.blueAccent];

// void is function return type
void main() {
  // main() function is called automatically in flutter
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 27, 172, 102),
        body: GradientContainer(colors: colors),
      ),
    ),
  ); // run app tells fultter what to display on screen
}
