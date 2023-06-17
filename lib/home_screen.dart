import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/quiz-logo.png',
              width: 300,
              color: Color.fromARGB(81, 255, 255, 255),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Learn Flutter the fun way',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
