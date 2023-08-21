import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Global/Quiz_data.dart';
import 'package:quiz_app/Sreens/LoginScreen.dart';
import 'package:quiz_app/Sreens/ScoreScreen.dart';

class QuizScreen extends StatefulWidget {
  final Map CategoryMap;
  QuizScreen({super.key, required this.CategoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: widget.CategoryMap["color"],
        centerTitle: true,
        actions: [
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 25),
                Expanded(
                    child: Text(
                  " ${index + 1} / ${(widget.CategoryMap["data"] as List).length}",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
                Expanded(
                    child: Text(
                  widget.CategoryMap["categoryName"],
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
          child: Center(
            child: Text(
              widget.CategoryMap["data"][index]["question"],
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(
          "Choices Are :",
          style: TextStyle(fontSize: 20),
        ),
        for (int i = 0;
            i < ((widget.CategoryMap["data"][index]["answers"] as List).length);
            i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: widget.CategoryMap["color"]),
                onPressed: () {
                  totalScore = totalScore +
                      widget.CategoryMap["data"][index]["answers"][i]
                          ["score"] as int;

                  if (index + 1 < (widget.CategoryMap["data"] as List).length) {
                    setState(() {
                      index++;
                    });
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => ScoreScreen(
                          totalScore: totalScore,
                          totalNumOfQuestion: index + 1,
                          // totalNumOfQuestion: (widget.categoryMap["data"] as List).length,
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  widget.CategoryMap["data"][index]["answers"][i]["ans"],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          ),
      ]),
    );
  }
}
