import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  var diceImageChange = 'assets/images/dice-4.png';

  void rollDice() {
    diceImageChange = 'assets/images/dice-6.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
            begin: startAlignment,
            end: endAlignment
          )
      ),
      child: Center(
        child: Column(
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
        )
      ),
    );
  }
}
