import 'package:flutter/material.dart';
import 'package:jitsimeet/screens/splashScreen/components/splash_content.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Dobrodosao u petcare",
      "image": "assets/images/welcome1.png",
    },
    {
      "text": "Dobrodosao u petcare",
      "image": "assets/images/welcome2.png",
    },
    {
      "text": "Dobrodosao u petcare",
      "image": "assets/images/welcome3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemBuilder: (context, index) => SplashContent(),
              ),
            ),
            Expanded(),
          ],
        ),
      ),
    );
  }
}
