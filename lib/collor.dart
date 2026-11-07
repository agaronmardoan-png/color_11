import 'package:flutter/material.dart';

class Collor extends StatefulWidget {
  const Collor({super.key});

  @override
  State<Collor> createState() => _CollorState();
}

class _CollorState extends State<Collor> {
  Color boxColor = Colors.red;

  void changeColor() {
    setState(() {
      if (boxColor == Colors.red) {
        boxColor = Colors.blue;
      } else if (boxColor == Colors.blue) {
        boxColor = Colors.green;
      } else {
        boxColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: changeColor,
          child: Container(width: 150, height: 150, color: boxColor),
        ),
      ),
    );
  }
}
