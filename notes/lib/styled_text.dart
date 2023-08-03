import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String
      text; // we can make this final bcz we are not going to change this var again, only once

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Italic',
          fontStyle: FontStyle.italic,
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white),
    );
  }
}
