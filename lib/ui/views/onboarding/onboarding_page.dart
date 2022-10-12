import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboaring_controller.dart';
import '../homepage/homepage_screen.dart';

import '../auth/login/login.dart';
import '../auth/signup/signup.dart';

class OnboardingPage extends StatefulWidget {
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          // Positioned(
          //   top: 20,
          //   left: 15,
          //   child: Image.asset(
          //     'assets/images/Kolologo.png',
          //     height: 30,
          //   ),
          // ),
          Positioned(
            right: 15,
            top: 20,
            child: TextButton(
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Color(0xFF3b2c77),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ),
          PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 300),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            _controller.onboardingPages[index].imageAsset),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          _controller.onboardingPages[index].title,
                          style: TextStyle(
                              fontFamily: 'Nexa',
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 64.0),
                          child: Text(
                            _controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
          Padding(
            padding: const EdgeInsets.only(top: 410),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: _controller.selectedPageIndex.value == index
                            ? Color(0xFF3b2c77)
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          _controller.isFirstPage
              ? Padding(
                  padding: const EdgeInsets.only(top: 340, left: 27),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              // MaterialPageRoute(builder: (context) => HomePage()));
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                          height: 50.0,
                          width: 340.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF3b2c77),
                            elevation: 7.0,
                            child: Center(
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              // MaterialPageRoute(builder: (context) => HomePage()));
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Container(
                          height: 50.0,
                          width: 340.0,
                          color: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 213, 213, 213),
                                    blurRadius: 2,
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 0,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child:
                                      Image.asset('assets/images/Google.png'),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Center(
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 20.0),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //         boxShadow: [
                      //           BoxShadow(
                      //             color: Color.fromARGB(255, 213, 213, 213),
                      //             blurRadius: 2,
                      //           ),
                      //         ],
                      //         border: Border.all(
                      //           color: Colors.white,
                      //           style: BorderStyle.solid,
                      //           width: 0,
                      //         ),
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.circular(10.0)),
                      //     child: TextButton(
                      //       onPressed: () {
                      //         Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => LoginPage()),
                      //         );
                      //       },
                      //       child: Obx(
                      //         () {
                      //           return Text(
                      //               _controller.isLastPage ? 'Start' : 'Next',
                      //               style: TextStyle(
                      //                 color: Color(0xFF3b2c77),
                      //                 fontWeight: FontWeight.bold,
                      //                 fontSize: 18,
                      //               ));
                      //         },
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 520.0),
                  child: Container(
                    width: double.infinity,
                    child: Center(
                      child: Image.asset('assets/images/bottomonboarding.png'),
                    ),
                  ),
                ),
        ],
      ),
    ));
  }
}
