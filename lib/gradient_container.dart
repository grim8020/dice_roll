import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


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
