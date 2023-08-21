import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/Sreens/OpeningScreen.dart';

import 'package:quiz_app/Global/Quiz_data.dart';

class ScoreScreen extends StatefulWidget {
  final int totalScore;
  final int totalNumOfQuestion;
  // StreamController? myStream;
  // Timer? myTimer;

  ScoreScreen(
      {super.key, required this.totalScore, required this.totalNumOfQuestion});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    text: "Congratulations, ",
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                  TextSpan(
                      text: "${userNameController.text} \n",
                      style: TextStyle(
                          color: Color.fromARGB(255, 196, 12, 52),
                          fontSize: 25)),
                  const TextSpan(text: "your score is "),
                  TextSpan(
                      text:
                          "${widget.totalScore} / ${widget.totalNumOfQuestion}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 196, 12, 52),
                          fontSize: 25)),
                ])),
            TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const OpeningScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text("Play again"))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    userNameController.clear();
  }
}
