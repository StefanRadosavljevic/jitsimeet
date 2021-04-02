import 'package:flutter/material.dart';
import 'package:jitsimeet/components/appbar.dart';
import 'package:jitsimeet/screens/otpScreen/components/otp_body.dart';

import '../../size_config.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(),
      body: OtpBody(),
    );
  }
}
