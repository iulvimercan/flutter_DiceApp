import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}



class _DiceRollerState extends State<DiceRoller> {

  var _activeDice = 1;
  Timer? _timer;
  final Random _random = Random();

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void rollDice() {
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(milliseconds: 200),
      (Timer timer) {
        setState(() {
          _activeDice = _random.nextInt(6) + 1;
        });
      }
    );

    Future.delayed(
      Duration(seconds: _random.nextInt(2) + 1),
      () => _timer?.cancel()
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$_activeDice.png',
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