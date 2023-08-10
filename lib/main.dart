import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz app',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 202, 74, 20)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'quiz app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content with an Image

          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 16),
              Image.asset(
                'images/home_page.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 16),
              Text(
                'ITI Quiz app',
                style: GoogleFonts.pacifico(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'We are Creative, enjoy our App',
                style: GoogleFonts.dancingScript().copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green, // Background Color
                  minimumSize: const Size(350, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)), // Button Shape
                ),
                child: const Text(
                  'Start',
                  style: TextStyle(fontSize: 24),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
