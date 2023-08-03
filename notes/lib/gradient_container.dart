import 'package:flutter/material.dart';
import 'package:notes/dice_roller.dart';
// import 'package:notes/styled_text.dart';

//## Not assigned Type variables
// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

//## Typed variables
// Type variableName
// Alignment? startAlignments; // ? means it can either have value or null

//## final & const
// final is also a keyword which means this data container will never receive a new value
// const is also similar to final but it gives some extra values

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const title = 'Hello World!';

//## BUILDING CUSTOM WIDGET
// class ClassName: first letter should be capital
class GradientContainer extends StatelessWidget {
  // This is a construtor fn: add the class name
  // GradientContainer() {
  //   // initialization work
  // }

  const GradientContainer(
      {super.key,
      required this.colors}); // with named argument we need required keyword as name arguments are optional

  final List<Color> colors;

  @override // extra metadata to tell that we are overriding the build method
  Widget build(context) {
    // return Widget / can be your or default flutter widget;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
        // child: StyledText(title)
      ),
    );
  }
}
