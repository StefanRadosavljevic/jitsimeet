import 'package:flutter/material.dart';
import 'package:jitsimeet/screens/completeProfilePetScreen/components/complete_profile_pet_body.dart';

import '../../constants.dart';

class CompleteProfilePetScreen extends StatelessWidget {
  static String routeName = "/completeProfilePet";
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
      body: CompleteProfilePetBody(),
    );
  }
}
