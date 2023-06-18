import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? currentScreen;

  @override
  void initState() {
    currentScreen = HomeScreen(changeScreen);
    super.initState();
  }

  void changeScreen() {
    setState(() {
      currentScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Color.fromARGB(255, 159, 38, 180)],
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
