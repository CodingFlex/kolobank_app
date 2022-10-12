// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kolobank_app/ui/views/homepage/homepage_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Image.asset('assets/images/signuptop.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset('assets/images/signupleft.png'),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/Kolologo.png',
                    height: 106,
                    width: 82.3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 47.0),
                  child: Container(
                    child: Image.asset('assets/images/signupright.png'),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 258.0,
                              bottom: 10.0,
                            ),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Color(0xFFc4c4c4)),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  color: Color(0xFFc4c4c4),
                                ),
                                border: InputBorder.none,
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 231.0,
                                  bottom: 10.0,
                                ),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Container(
                                width: 300,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Color(0xFFc4c4c4)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Color(0xFFc4c4c4),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Color(0xFFc4c4c4),
                                    ),
                                    border: InputBorder.none,
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      color: Color(0xFFC4C4C4),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 10.0,
                                  right: 180.0,
                                ),
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      color: Color(0xFF3b2c77),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 70,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    // MaterialPageRoute(builder: (context) => HomePage()));
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: SizedBox(
                                height: 50.0,
                                width: 300.0,
                                child: Material(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFF3b2c77),
                                  elevation: 7.0,
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
