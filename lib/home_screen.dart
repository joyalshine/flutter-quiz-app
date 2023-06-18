import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.nextScreen, {super.key});

  final void Function() nextScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          OutlinedButton.icon(
            onPressed: nextScreen,
            icon: const Icon(Icons.arrow_forward),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
