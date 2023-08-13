import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Sreen/LoginScreen.dart';
import 'package:quiz_app/Sreen/ScoreScreen.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({super.key});
  List<String> Buttonname = ["1930", "1940", "1920", "1931"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 25),
                Expanded(
                    child: Text(
                  "5/10",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
                Expanded(
                    child: Text(
                  "Sport Test",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
                Expanded(
                  child: Image.asset(
                    "images/Sport_Logo.png",
                    height: 500,
                    width: 300,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 1 / 4,
          child: Column(
            children: [
              Card(
                color: Colors.black,
                child: Column(
                  children: [
                    Text(
                      "Question 5",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Center(
                      child: Text(
                        "When was the first world cup ?",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Text(
          "Choices Are :",
          style: TextStyle(fontSize: 20),
        ),
        for (int i = 0; i < 3; i++)
          Container(
            height: MediaQuery.of(context).size.height * 1 / 8,
            child: Column(children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => ScoreScreen(),
                    ),
                  );
                },
                child: Text(
                  Buttonname[i],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  minimumSize: Size(200, 50.0),
                ),
              ),
            ]),
          ),
      ]),
    );
  }
}
