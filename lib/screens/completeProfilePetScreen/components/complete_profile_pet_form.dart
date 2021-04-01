import 'package:flutter/material.dart';
import 'package:jitsimeet/components/custom_surfix_icon.dart';
import 'package:jitsimeet/components/default_button.dart';
import 'package:jitsimeet/components/form_error.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfilePetForm extends StatefulWidget {
  @override
  _CompleteProfilePetFormState createState() => _CompleteProfilePetFormState();
}

class _CompleteProfilePetFormState extends State<CompleteProfilePetForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String tip, ime, godine, tezina, rasa;

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
          buildTypeField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNameField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildYearsField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildRasaField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTezinaField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: 'Nastavite',
            press: () {
              if (_formKey.currentState.validate()) {
                // Navigator.pushNamed(context, OtpScreen.routename);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildTypeField() {
    return TextFormField(
      onSaved: (newValue) => tip = newValue,
      onEditingComplete: () => node.nextFocus(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kTipNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kTipNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Unesite tip vaseg ljubimca. (pas ili macka)",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        border: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildNameField() {
    return TextFormField(
      onSaved: (newValue) => ime = newValue,
      onEditingComplete: () => node.nextFocus(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kImeLjubimcaNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kImeLjubimcaNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Unesite ime vaseg ljubimca.",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        border: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildYearsField() {
    return TextFormField(
      onSaved: (newValue) => godine = newValue,
      onEditingComplete: () => node.nextFocus(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kgodineLjubimcaNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kgodineLjubimcaNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Unesite godine vaseg ljubimca. (pas ili macka)",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        border: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildRasaField() {
    return TextFormField(
      onSaved: (newValue) => rasa = newValue,
      onEditingComplete: () => node.nextFocus(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kRasaLjubimcaNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kRasaLjubimcaNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Unesite rasu vaseg ljubimca.",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        border: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildTezinaField() {
    return TextFormField(
      onSaved: (newValue) => godine = newValue,
      onEditingComplete: () => node.nextFocus(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kgodineLjubimcaNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kgodineLjubimcaNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Unesite tezinu vaseg ljubimca.",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        border: outlineInputBorder(),
      ),
    );
  }
}
