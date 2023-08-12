import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // the width of the device
        height: MediaQuery.of(context).size.height * 1, // hight of the device

        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "images/background.jpg",
                ),
                fit: BoxFit.cover)),

        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Image.asset(
              "images/home_page.png",
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "ITI Quiz App",
              style: GoogleFonts.pacifico(fontSize: 50, color: Colors.yellow),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "We are creative, enjoy our app",
              style:
                  GoogleFonts.dancingScript(fontSize: 30, color: Colors.white),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Start",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  minimumSize: Size(200, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
