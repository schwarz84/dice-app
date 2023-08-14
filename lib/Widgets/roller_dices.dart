import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class RollerDices extends StatefulWidget {
  const RollerDices({super.key});

  @override
  State<RollerDices> createState() {
    return _RollerDiceState();
  }
}

class _RollerDiceState extends State<RollerDices> {

  var diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 300,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                backgroundColor: Colors.yellowAccent,
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
            ),
            child: const Text(
              'Roll Dice',
            )
        )
      ],
    );
  }
}