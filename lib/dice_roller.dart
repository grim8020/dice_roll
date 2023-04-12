import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-3.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            activeDiceImage,
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
