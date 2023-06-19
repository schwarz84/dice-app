import 'package:flutter/material.dart';

class RollerDices extends StatefulWidget {
  const RollerDices({super.key});

  @override
  State<RollerDices> createState() {
    return _RollerDiceState();
  }
}

class _RollerDiceState extends State<RollerDices> {

  var diceImageChange = 'assets/images/dice-4.png';

  void rollDice() {
    setState(() {
      diceImageChange = 'assets/images/dice-3.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImageChange,
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