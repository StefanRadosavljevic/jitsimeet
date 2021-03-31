import 'package:flutter/material.dart';
import 'package:jitsimeet/screens/splashScreen/components/splash_body.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}
