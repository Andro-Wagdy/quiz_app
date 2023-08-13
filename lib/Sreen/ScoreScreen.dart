import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Sreen/LoginScreen.dart';
import 'package:quiz_app/Sreen/OpeningScree.dart';

class ScoreScreen extends StatelessWidget {
  ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 30),
                  ),
                  Center(
                      child: Text(
                    "Andro",
                    style: TextStyle(fontSize: 30, color: Colors.purple),
                  )),
                ],
              ),
              Center(
                  child: Text(
                "Your Score is 10 / 10",
                style: TextStyle(fontSize: 30, color: Colors.black),
              )),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const OpeningScreen(),
              ),
            );
          },
          child: Text(
            "Reset Quiz",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            minimumSize: Size(300, 75.0),
          ),
        )
      ]),
    ));
  }
}
