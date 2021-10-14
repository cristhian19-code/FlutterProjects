import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonDay extends StatelessWidget {
  final String asset, label;

  ButtonDay(@required this.asset, @required this.label)
      : assert(asset != null),
        assert(label != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          asset,
          height: 55,
          width: 55,
          color: Colors.black38,
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        )
      ],
    );
  }
}
