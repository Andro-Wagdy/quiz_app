import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Sreens/CategoryScreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // This widget is the root of your application.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool? isChecked = true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.green),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 168),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
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
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                validator: (value) {
                                  RegExp regex = RegExp(
                                      r'^[a-zA-Z0-9._]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$');
                                  if (value!.isEmpty) {
                                    return 'Please enter an email address';
                                  } else if (!regex.hasMatch(value)) {
                                    return 'Invalid email address';
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.mail),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(40))),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                validator: (value) {
                                  RegExp regex = RegExp(r'^[A-Z][a-z0-9]+$');
                                  if (value!.isEmpty) {
                                    return "Please ener your Username";
                                  } else if (value.length < 8) {
                                    return "Username must be 8 characters at lease";
                                  } else if (!regex.hasMatch(value!)) {
                                    return "First character must be Uppercase";
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: 'Username',
                                    prefixIcon: Icon(Icons.person),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(40))),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a password';
                                  } else if (!RegExp(
                                              r'^[A-Za-z0-9_.@#$%^&*]{9,}$')
                                          .hasMatch(value) &&
                                      value.length < 9) {
                                    return 'password must be 9 characters at least and must contain at\nleast one uppercase letter,one lowercase letter, one number,\nand one special character';
                                  } else if (!RegExp(
                                              r'^[A-Za-z0-9_.@#$%^&*]{9,}$')
                                          .hasMatch(value) &&
                                      value.length > 9) {
                                    return "password must contain at least one uppercase letter\none lowercase letter, one number, and one special character";
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: 'Password',
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon:
                                        Icon(Icons.visibility_off_outlined),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(40))),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  'new to quiz app?',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
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
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          CategoryScreen(),
                                    ),
                                  );
                                }
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
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                                Spacer(),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forget Password?',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 17),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120, right: 120),
            child: Image.asset(
              "images/alien.png",
            ),
          ),
        ]),
      ),
    );
  }
}
