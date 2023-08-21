import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Global/Quiz_data.dart';
import 'package:quiz_app/Sreens/LoginScreen.dart';
import 'package:quiz_app/Sreens/QuizScreen.dart';
import 'package:quiz_app/Widgets/Category_Container.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  List quizname = [
    "Sport test",
    "History test",
    "General test",
    "Science test",
    "Gography test",
    "Food test"
  ];
  List quizColors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.blue,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 6; i++)
            CategoryContainer(
              index: i,
            ),
          WillPopScope(
            onWillPop: () async {
              // Show an AlertDialog when the back button is pressed
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Confirm Exit'),
                    content: Text('Are you sure you want to exit ?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          // Pop the AlertDialog and allow back navigation
                          Navigator.of(context).pop();
                          Navigator.of(context)
                              .pop(true); // Allow back navigation
                        },
                        child: Text('Yes'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Pop the AlertDialog and prevent back navigation
                          Navigator.of(context)
                              .pop(); // Prevent back navigation
                        },
                        child: Text('No'),
                      ),
                    ],
                  );
                },
              );
              return false; // Prevent immediate back navigation
            },
            child: Center(),
          ),
        ],
      ),
    );
  }
}
