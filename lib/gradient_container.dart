import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: colors
          ),
        ),
        child: const Center(
          child: StyledText(msg: 'Ben Ulvi :)'),
        )
    );
  }

}
