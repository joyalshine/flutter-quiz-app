import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You answered 3 out of 6 questions correctly!',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(
            child: ListView(
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    child: Text("1"),
                  ),
                  title: Text("dvdsvds sddsvsd dsvsdvd vs"),
                )
              ],
            ),
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.restart_alt),
              label: const Text('Restart Quiz'))
        ],
      ),
    );
  }
}
