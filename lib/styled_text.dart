import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget {
  const TextStyling(this.entertext, {super.key});

  final String entertext;

  @override
  Widget build(context) {
    return  Text(
      entertext,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 29,
      ),
    );
  }
}
