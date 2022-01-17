import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
    const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
var questionIndex = 0;

  void answers(){
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question =[
      'what is your name?',
      'what is your age?'
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('My Quiz')),
      body: Column(
        children:  [
          Text(question[questionIndex]),
          // ignore: deprecated_member_use
           RaisedButton(
            child: const Text("Answer 1"),
            onPressed: answers,
          // ignore: deprecated_member_use
          ), RaisedButton(
            child: const Text("Answer 2"),
            onPressed: answers,
          // ignore: deprecated_member_use
          ),RaisedButton(
            child: const Text("Answer 3"),
            onPressed: answers,
          // ignore: deprecated_member_use
          ),
        ],
      ),
    );
  }
}
