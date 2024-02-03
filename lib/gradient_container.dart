import 'package:flutter/material.dart';
import 'package:new_app/dice_rolling.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {Key? key})
      : super(key: key);

  final Color color1;
  final Color color2;

  // void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRolling()),
    );
  }
}
