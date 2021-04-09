import 'package:flutter/material.dart';
import 'package:jitsimeet/components/appbar.dart';
import 'package:jitsimeet/screens/mainScreen/components/mainBody.dart';

class MainScreen extends StatelessWidget {
  static String routeName = "/mainScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: MainBody(),
    );
  }
}
