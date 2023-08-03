import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  // This createState return a State object, and which kind of state here our class name <DiceRoller>
  // and in the body of the createState method you have to return a value that has this type State<DiceRoller>
  // and this value is created using another class using statefulwidget, so we will always work with 2 classes
  // in stateful widget
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  var currentRoll = 2;

  // As onPressed wants a function that returs nothing, hover onPressed and check the type
  void rollDice() {
    // This is re-execute the build() below

    // Create random number
    var diceRoll = randomizer.nextInt(6) + 1;

    setState(() {
      currentRoll = diceRoll;
      // Inside this anynomous fn, we can perform any update to objects variable that should update the UI
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentRoll.png', width: 200),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 30, right: 30),
                backgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
