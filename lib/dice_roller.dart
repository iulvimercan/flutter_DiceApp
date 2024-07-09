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

  String activeDice = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      activeDice = 'assets/images/dice-${Random().nextInt(6) + 1}.png';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
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