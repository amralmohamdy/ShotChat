import 'package:flutter/material.dart';
import 'package:www/modules/on_boarding/on_boarding.dart';
import 'package:www/modules/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());

  Future.delayed(Duration(
    milliseconds: 750,
  )).then((value) => Image(
        image: AssetImage('assets/images/logo.png'),
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'circular'),
      home: SplashScreen(),
    );
  }
}
