import 'package:dice_roll/dice_roller.dart';
import 'package:dice_roll/styled_text.dart';
import 'package:flutter/material.dart';
//import 'styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

String dice1 = 'assets/images/dice-1.png';
String dice2 = 'assets/images/dice-2.png';
String dice3 = 'assets/images/dice-3.png';
String dice4 = 'assets/images/dice-4.png';
String dice5 = 'assets/images/dice-5.png';
String dice6 = 'assets/images/dice-6.png';

List<String> dice = [dice1, dice2, dice3, dice4, dice5, dice6];

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.color1, required this.color2});

  const GradientContainer.yellow({super.key})
      : color1 = const Color.fromARGB(255, 151, 109, 26),
        color2 = const Color.fromARGB(255, 202, 194, 135);

  const GradientContainer.blue({super.key})
      : color1 = Colors.blueGrey,
        color2 = Colors.blue;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const SafeArea(
        child: DiceRoller(),
      ),
    );
  }
}
