import "package:flutter/material.dart";
import "package:quizapp/start_screen.dart";

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 62, 26, 126),
              Color.fromARGB(255, 64, 45, 97)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            )),
            child: const StartScreen()),
      ),
    ),
  );
}
