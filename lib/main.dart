import 'package:flutter/material.dart';
import 'package:new_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(Color.fromARGB(255, 67, 28, 134),
            Color.fromARGB(255, 143, 94, 228)),
    ),
  ));
}
