import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'ui/views/splash_screen/splash_screen2.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // ignore: avoid_types_as_parameter_names
      builder: (BuildContext, c) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen2(),
      ),
    );
  }
}
