import 'package:flutter/material.dart';
import 'package:jitsimeet/constants.dart';
import 'package:jitsimeet/size_config.dart';

class SmallButton extends StatelessWidget {
  final String text;
  final Function press;

  const SmallButton({Key key, this.text, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(150),
      height: getProportionateScreenHeight(46),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          primary: kPrimaryColor,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
