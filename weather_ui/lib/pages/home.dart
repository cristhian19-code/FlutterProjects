import 'package:flutter/material.dart';
import 'package:weather_ui/widgets/button_day.dart';
import 'package:weather_ui/widgets/temperature_climate.dart';
import 'package:weather_ui/widgets/upper_body_text.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700],
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [UpperBodyText(), TemperatureClimate()],
        ),
      ),
      bottomNavigationBar: Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        padding: EdgeInsets.only(top: 20, right: 30, bottom: 20, left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonDay('assets/icon/sun.svg', 'MON'),
            ButtonDay('assets/icon/raining.svg', 'TUE'),
            ButtonDay('assets/icon/sun_cloud.svg', 'WED'),
            ButtonDay('assets/icon/cloud.svg', 'THU')
          ],
        ),
      ),
    );
  }
}
