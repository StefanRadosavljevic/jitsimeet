import 'package:flutter/material.dart';
import 'package:jitsimeet/components/appbar.dart';
import 'package:jitsimeet/screens/completeProfileScreen/components/complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/completeProfileUser";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: CompleteProfileBody(),
    );
  }
}
