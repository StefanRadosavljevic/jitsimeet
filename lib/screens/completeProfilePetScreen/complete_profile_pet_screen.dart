import 'package:flutter/material.dart';
import 'package:jitsimeet/components/appbar.dart';
import 'package:jitsimeet/screens/completeProfilePetScreen/components/complete_profile_pet_body.dart';

class CompleteProfilePetScreen extends StatelessWidget {
  static String routeName = "/completeProfilePet";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: CompleteProfilePetBody(),
    );
  }
}
