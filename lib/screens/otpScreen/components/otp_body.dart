import 'package:flutter/material.dart';

import '../../../size_config.dart';

class OtpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(),
              Text("OTP Verification"),
              Text("We sent a code to +381 549494991"),
              SizedBox(),
              GestureDetector(),
            ],
          ),
        ),
      ),
    );
  }
}
