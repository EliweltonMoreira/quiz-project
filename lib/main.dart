import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

main() => runApp(const QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestions = 0;

  void _reply() {
    setState(() {
      _selectedQuestions++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'What is your favorite color?',
      'What is your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestions]),
            Answer('Question 1', _reply),
            Answer('Question 2', _reply),
            Answer('Question 3', _reply),
          ],
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
