import 'package:flutter/material.dart';
import 'package:jitsimeet/screens/completeProfilePetScreen/components/complete_profile_pet_form.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfilePetBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Podaci vaseg ljubimca", style: headingStyle),
                Text(
                  "Unesite podatke o vasem ljubimcu",
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CompleteProfilePetForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "By continuing your confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
