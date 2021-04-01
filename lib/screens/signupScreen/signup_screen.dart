import 'package:flutter/material.dart';
import 'package:jitsimeet/components/appbar.dart';
import 'package:jitsimeet/screens/signupScreen/components/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SignUpBody(),
    );
  }
}
