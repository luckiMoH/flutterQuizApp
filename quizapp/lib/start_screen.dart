import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(child: 
    Column(
      mainAxisSize: MainAxisSize.min, //wyśrodkowanie
      children: [
        // Opacity(
        //   opacity: 0.1,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(125, 255, 255, 255),
          ),
        const SizedBox(height: 80),
        const Text("Kliknij aby rozpocząć!", style: TextStyle(
          color: Colors.white,
          fontSize: 24
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Rozpocznij QUIZ!")
        )
      ],
    )
    );
  }
}