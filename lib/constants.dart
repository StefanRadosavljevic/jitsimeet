import 'package:flutter/material.dart';
import 'package:jitsimeet/size_config.dart';

const kPrimaryColor = Color(0xFF56C596);
const kPrimaryLightColor = Color(0xFFFFFFFF);
const kTextColor = Color(0xFF205072);
const kSecondaryColor = Color(0xFF329D9C);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Molimo unesitite vas email.";
const String kInvalidEmailError = "Molimo unesite validan email.";
const String kPassNullError = "Molimo unesite lozinku.";
const String kShortPassError = "Lozinka nema dovoljno karaktera.";
const String kMatchPassError = "Lozinke se ne podudaraju.";
const String kNamelNullError = "Molimo unesite vase ime.";
const String kPhoneNumberNullError = "Molimo unesite vas broj telefona.";
const String kAddressNullError = "Molimo unesite vasu adresu.";
const String kTipNullError = "Molimo unesite tip ljubimca.";
const String kImeLjubimcaNullError = "Molimo unesite ime vaseg ljubimca";
const String kgodineLjubimcaNullError = "Molimo unesite godine vaseg ljubimca";
const String kRasaLjubimcaNullError = "Molimo unesite rasu.";
const String ktezinaLjubimcaNullError = "Molimo unesite tezinu ljubimca.";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: Colors.green),
    // borderSide: BorderSide.none,
  );
}
