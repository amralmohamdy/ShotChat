import 'dart:async';

import 'package:flutter/material.dart';
import 'package:www/modules/on_boarding/on_boarding.dart';
import 'package:www/shared/components/components.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    NavigateAndFinish(
        context,
        AnimatedContainer(
            duration: Duration(milliseconds: 750), child: OnBoarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              AnimatedCrossFade(
                crossFadeState: CrossFadeState.showFirst,
                duration: Duration(milliseconds: 750),
                secondChild: Container(),
                firstChild: Image(
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage('assets/images/logo.png'),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.red,
                color: Colors.white,
                strokeWidth: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
