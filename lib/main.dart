import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color? ',
      'What\'s your favorite animal? '
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: () => print('Answer 2 choosen'),
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: () {
                  print('Answer 3 choosen');
                },
              ),
            ],
          )),
    );
  }
}
