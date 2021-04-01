import 'package:flutter/material.dart';
import 'package:jitsimeet/routes.dart';
import 'package:jitsimeet/screens/splashScreen/splash_screen.dart';
import 'package:jitsimeet/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
