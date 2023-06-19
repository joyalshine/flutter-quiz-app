import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_option_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[0];

    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ...currentQuestion.answers.map((item) {
                return QuizOption(item, onTap: () {});
              })
            ],
          ),
        ));
  }
}
