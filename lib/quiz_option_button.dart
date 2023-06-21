import 'package:flutter/material.dart';

class QuizOption extends StatelessWidget {
  const QuizOption(this.option, {required this.onTap, super.key});

  final String option;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 17, 54, 97),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(
          option,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
