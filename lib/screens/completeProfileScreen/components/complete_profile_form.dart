import 'package:flutter/material.dart';
import 'package:jitsimeet/components/custom_surfix_icon.dart';
import 'package:jitsimeet/components/default_button.dart';
import 'package:jitsimeet/components/form_error.dart';
import 'package:jitsimeet/screens/completeProfilePetScreen/complete_profile_pet_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName, lastName, phoneNumber, address;

  // on next button go to next textfield
  get node => FocusScope.of(context);

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: 'Nastavite',
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(
                    context, CompleteProfilePetScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onEditingComplete: () => node.nextFocus(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Vase ime",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        border: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onEditingComplete: () => node.nextFocus(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Vase prezime",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        border: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildAddressField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onEditingComplete: () => node.nextFocus(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Vasa adresa",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
        border: outlineInputBorder(),
      ),
    );
  }
}
