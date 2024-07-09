import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}



class _DiceRollerState extends State<DiceRoller> {

  var activeDice = 1;
  final Random random = Random();

  void rollDice() {
    setState(() {
      activeDice = random.nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDice.png',
          width: 200,
        ),
        const SizedBox(height: 50),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 57, 173, 255),
                padding: const EdgeInsets.all(21.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
                ),
                textStyle: const TextStyle(
                    fontSize: 21
                )
            ),
            child: const Text('Roll Dice')),

      ],
    );
  }
}