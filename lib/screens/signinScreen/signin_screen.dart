import 'package:flutter/material.dart';
import 'package:jitsimeet/components/appbar.dart';
import 'package:jitsimeet/screens/signinScreen/components/signin_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SignInBody(),
    );
  }
}
