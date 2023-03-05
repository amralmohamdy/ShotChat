import 'package:flutter/material.dart';
import 'package:www/modules/login/login.dart';
import 'package:www/shared/components/components.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Image(
                image: AssetImage('assets/images/logo.png'),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Image(
                  image: AssetImage('assets/images/features.png'),
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'SHARE - INSPIRE - CONNECT',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: MaterialButton(
                  textColor: Color.fromRGBO(255, 255, 255, 1),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  onPressed: () {
                    NavigateAndFinish(context, Login());
                  },
                  elevation: 0,
                  height: 50,
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
