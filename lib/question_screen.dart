import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_option_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.addAnswer, {super.key});

  final void Function(String option) addAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void nextquestion(var answer) {
    widget.addAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];

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
              ...currentQuestion.shuffleOptions().map((item) {
                return QuizOption(item, onTap: () {
                  nextquestion(item);
                });
              })
            ],
          ),
        ));
  }
}
