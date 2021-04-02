import 'package:flutter/material.dart';

import '../constants.dart';

AppBar myAppBar() {
  return AppBar(
    leading: BackButton(color: kTextColor),
    title: Text(
      "PetCare",
      style: TextStyle(color: kTextColor),
    ),
    backgroundColor: kPrimaryLightColor,
    elevation: 0,
  );
}
