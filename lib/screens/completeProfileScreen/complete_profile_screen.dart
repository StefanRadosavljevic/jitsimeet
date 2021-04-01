import 'package:flutter/material.dart';
import 'package:jitsimeet/screens/completeProfileScreen/components/complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/completeProfile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete profile'),
      ),
      body: CompleteProfileBody(),
    );
  }
}
