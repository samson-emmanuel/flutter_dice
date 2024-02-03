import 'package:flutter/material.dart';
import 'dart:math';

class DiceRolling extends StatefulWidget {
  const DiceRolling({super.key});

  @override
  State<DiceRolling> createState() => _DiceRollingState();
}

class _DiceRollingState extends State<DiceRolling> {
  var changeImage = Image.asset(
    'assets/images/dice-1.png',
    width: 200,
  );

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;

    setState(() {
      changeImage = Image.asset(
        'assets/images/dice-$diceRoll.png',
        width: 200,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        changeImage,
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
