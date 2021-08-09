import 'package:flutter/material.dart';
import 'dart:math';

class Dicee extends StatelessWidget {
  const Dicee({Key? key}) : super(key: key);
  static const routeKey = "Dicee";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DiceRoller(),
        ],
      ),
    );
  }
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: InkWell(
                child: Image.asset("assets/images/dice$leftDiceNumber.png"),
                onTap: () {
                  changeDiceFace();
                },
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: InkWell(
                child: Image.asset("assets/images/dice$rightDiceNumber.png"),
                onTap: () {
                  changeDiceFace();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
