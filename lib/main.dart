import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body: Container(
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
          child: Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 28,
            ),
          ),
        )
      ),
    ),
  ));
}