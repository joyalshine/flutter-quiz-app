import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer(this.consolidatedData, {super.key});

  final List<Map<String, Object>> consolidatedData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: consolidatedData.map((item) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        color: item['selected_ans'] == item['correct_ans']
                            ? const Color.fromARGB(255, 95, 214, 185)
                            : const Color.fromARGB(255, 212, 70, 70),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                        child: Text(
                            ((item['question_index'] as int) + 1).toString())),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['question'] as String,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          item['selected_ans'] as String,
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(
                          item['correct_ans'] as String,
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 233, 55)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
