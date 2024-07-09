import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp( const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          colors: [
            Colors.white,
            Color.fromARGB(255, 176, 216, 255)
          ],
      ),
    ),
  ));
}
