import 'package:flutter/material.dart';
import 'package:jitsimeet/screens/mainScreen/components/mainBody.dart';

class MainScreen extends StatelessWidget {
  static String routeName = "/mainScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        backgroundColor: Colors.transparent,
      ),
      body: MainBody(),
    );
  }
}
