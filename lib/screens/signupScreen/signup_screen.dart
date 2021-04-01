import 'package:flutter/material.dart';
import 'package:jitsimeet/constants.dart';
import 'package:jitsimeet/screens/signupScreen/components/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register account',
          style: TextStyle(color: kTextColor),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SignUpBody(),
    );
  }
}
