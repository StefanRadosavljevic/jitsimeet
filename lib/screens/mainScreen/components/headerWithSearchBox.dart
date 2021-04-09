import 'package:flutter/material.dart';
import 'package:jitsimeet/components/small_button.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  final Size size;

  const HeaderWithSearchBox({Key key, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: size.height * .45,
          decoration: BoxDecoration(
            color: kLightBackground,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Cao [name]!",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Cao [name]!",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                SmallButton(
                  text: 'Pozovi',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
