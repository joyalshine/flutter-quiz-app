import 'package:flutter/material.dart';
import 'package:quiz_app/answer_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? currentScreen;

  final List<String> answers = [];

  void addAnswer(String option) {
    answers.add(option);

    if (answers.length == questions.length) {
      setState(() {
        currentScreen = AnswerScreen(answers);
      });
    }
  }

  @override
  void initState() {
    currentScreen = HomeScreen(changeScreen);
    super.initState();
  }

  void changeScreen() {
    setState(() {
      currentScreen = QuestionScreen(addAnswer);
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
              colors: [
                Color.fromARGB(255, 177, 44, 201),
                Color.fromARGB(255, 40, 127, 203)
              ],
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
