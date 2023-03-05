import 'package:flutter/material.dart';
import 'package:www/modules/login/login.dart';
import 'package:www/shared/components/components.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var frmKey = GlobalKey<FormState>();
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/login-bg.jpg'),
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            color: Colors.blue.withOpacity(.1),
                            height: 326,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/logo.png'),
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'WELCOME',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                letterSpacing: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 470,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                padding: EdgeInsets.all(40),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(28),
                    topEnd: Radius.circular(28),
                  ),
                ),
                child: Form(
                  key: frmKey,
                  child: Column(
                    children: [
                      txtFrmField(
                        hintText: 'User Name',
                        keyType: TextInputType.name,
                        prefixIcon: Icons.person,
                        controller: usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This Field Musn\'t be Empty';
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      txtFrmField(
                        keyType: TextInputType.emailAddress,
                        hintText: 'E-Mail',
                        prefixIcon: Icons.email,
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This Field Musn\'t be Empty';
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      txtFrmField(
                        keyType: TextInputType.visiblePassword,
                        prefixIcon: Icons.lock,
                        hintText: 'Password',
                        obSecure: isPassword,
                        suffixIcon: isPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        onPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This Field Musn\'t be Empty';
                          }
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      DefaultButton(
                          text: 'Sign Up',
                          onPressed: () {
                            if (frmKey.currentState!.validate()) {}
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'OR Sign Up BY'.toUpperCase(),
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xffE3E4FC),
                            radius: 25,
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/icons/google.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xffE3E4FC),
                            radius: 25,
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/icons/facebook.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                NavigateAndFinish(context, Login());
                              },
                              child: Text(
                                'log in'.toUpperCase(),
                                style: TextStyle(
                                  color: Color(0xff5151C6),
                                  fontSize: 16,
                                ),
                              )),
                        ],
                      ),
                    ],
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
