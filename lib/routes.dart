import 'package:flutter/material.dart';
import 'package:jitsimeet/screens/completeProfilePetScreen/complete_profile_pet_screen.dart';
import 'package:jitsimeet/screens/completeProfileScreen/complete_profile_screen.dart';
import 'package:jitsimeet/screens/mainScreen/mainScreen.dart';
import 'package:jitsimeet/screens/otpScreen/otpScreen.dart';
import 'package:jitsimeet/screens/signinScreen/signin_screen.dart';
import 'package:jitsimeet/screens/signupScreen/signup_screen.dart';
import 'package:jitsimeet/screens/splashScreen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  CompleteProfilePetScreen.routeName: (context) => CompleteProfilePetScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  MainScreen.routeName: (context) => MainScreen(),
};
