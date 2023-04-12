import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //final randomizer = Random();
  var currentDiceRoll = 2;

  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
        ),
        TextButton(
          onPressed: () => rollDice(),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: const Color.fromARGB(255, 212, 195, 68),
            textStyle:
                const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
