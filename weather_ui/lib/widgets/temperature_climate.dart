import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TemperatureClimate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: <Widget>[
              SvgPicture.asset(
                'assets/icon/raining.svg',
                height: 90,
                width: 90,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tunis',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text('15/06/21',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            color: Colors.white)),
                  ],
                ),
              )
            ],
          ),
          Icon(
            Icons.sync,
            color: Colors.white,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('34', style: TextStyle(fontSize: 110, color: Colors.white)),
              Text('°C', style: TextStyle(fontSize: 20, color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
}
