import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 204, 87),
        body: GradientContainer.blue(),
      ),
    );
  }
}
