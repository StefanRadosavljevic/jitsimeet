import 'package:flutter/widgets.dart';
import 'package:jitsimeet/screens/mainScreen/components/headerWithSearchBox.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
        ],
      ),
    );
  }
}
