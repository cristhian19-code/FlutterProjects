import 'package:flutter/material.dart';

class UpperBodyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              'TUESDAY',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black12),
            )),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Icon(
            Icons.alarm,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'You have 1 oppontheme',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          height: 60,
          width: 250,
          alignment: Alignment.center,
          child: Text(
            'GO TO CALENDAR',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, offset: Offset(5, 5), color: Colors.black54)
              ],
              color: Colors.amber[600]),
        )
      ],
    );
  }
}
