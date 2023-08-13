import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Sreen/CategoryScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool? isChecked = true;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: Column(
          children: [
            Image.asset(
              "images/alien.png",
              width: MediaQuery.of(context).size.width * 0.40,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Username',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'new to quiz app?',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => CategoryScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          minimumSize: Size(200, 50),
                          elevation: 10),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Image.asset(
                      "images/fingerprint.png",
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      'Use Touch ID',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(135, 138, 136, 136)),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            activeColor: Colors.green,
                            tristate: true,
                            onChanged: (bool? value) {}),
                        Text(
                          'Remember me',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password?',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 17),
                            ))
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
