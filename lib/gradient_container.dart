import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Colors.white,
                Color.fromARGB(255, 176, 216, 255),
              ]
          ),
        ),
        child: const Center(
          child: StyledText(msg: 'Ben Ulvi :)'),
        )
    );
  }

}
