import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            color: Color.fromARGB(255, 6, 55, 95),
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
