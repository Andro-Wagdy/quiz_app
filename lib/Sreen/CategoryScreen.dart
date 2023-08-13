import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Sreen/LoginScreen.dart';
import 'package:quiz_app/Sreen/QuizScreen.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  List quizname = ["Sport test", "History test", "General test"];
  List quizColors = [Colors.red, Colors.green, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => QuizScreen(),
                    ),
                  );
                },
                child: Container(
                  child: Center(
                    child: Text(
                      quizname[i],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: quizColors[i],
                      border: Border.all(width: 1, color: Colors.black)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
