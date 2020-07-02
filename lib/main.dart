import 'package:flutter/material.dart';
import 'package:from_scratch_app/custom/Question.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyAppState extends State<MyApp>
{
  var questions = <Question>[
    Question(questionText: 'What\'s you favorite color?', correctAnswer: 'red', info: 'since all idiots like red'),
    Question(questionText: 'What\'s you favorite animal?', correctAnswer: 'pig', info: 'since all idiots like pigs'),
  ];
  
  var currentQuestion = 0;

  void btnPressed(int selectedOption) 
  {
    setState(() {
      currentQuestion++;  
    });
    
    print('You\'ve chosen $selectedOption option');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[currentQuestion].questionText),
            Text('Please choose your answer:'),
            RaisedButton(
              child: Text('press me'),
              onPressed: () => btnPressed(1),
            ),
            RaisedButton(
              child: Text('no press me!'),
              onPressed: () => btnPressed(2),
              color: Colors.greenAccent,
             // autofocus: true,
             // clipBehavior: Clip.hardEdge,
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
  
}
