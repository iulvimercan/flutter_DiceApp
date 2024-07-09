import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String msg;

  const StyledText({super.key, this.msg = 'Hello, World!'});

  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 28,
      ),
    );
  }
}