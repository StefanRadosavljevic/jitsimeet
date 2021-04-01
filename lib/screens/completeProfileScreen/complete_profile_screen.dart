import 'package:flutter/material.dart';
import 'package:jitsimeet/screens/completeProfileScreen/components/complete_profile_body.dart';

import '../../constants.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/completeProfile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register account',
          style: TextStyle(color: kTextColor),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: CompleteProfileBody(),
    );
  }
}
