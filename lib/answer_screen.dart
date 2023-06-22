import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_component.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen(this.selectedAnswers, this.changeScreen, {super.key});

  final List<String> selectedAnswers;
  final void Function(String nextScreen) changeScreen;

  List<Map<String, Object>> generateData() {
    final List<Map<String, Object>> temp = [];
    for (var i = 0; i < questions.length; i++) {
      temp.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_ans': questions[i].answers[0],
        'selected_ans': selectedAnswers[i]
      });
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> consolidatedData = generateData();
    final totalQuestions = questions.length;
    final correctQuestions;

    correctQuestions = consolidatedData.where(
      (item) {
        return item['correct_ans'] == item['selected_ans'];
      },
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctQuestions out of $totalQuestions questions correctly!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            ResultContainer(consolidatedData),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  changeScreen('result_screen');
                },
                icon: const Icon(Icons.restart_alt),
                label: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
