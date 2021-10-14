import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/widgets/bottom_navigation_bar.dart';
import 'package:flutter_application_2/widgets/circle_container.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        toolbarHeight: 80,
        title: Text(
          'Portfolio',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
        ),
      ),
      bottomNavigationBar: BottomBar([
        BottomMenuItem('assets/icons/home.svg', 'Home'),
        BottomMenuItem('assets/icons/home.svg', 'Home'),
        BottomMenuItem('assets/icons/home.svg', 'Home')
      ]),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'My name is Christian Ricardo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleContainer(40, 40, Colors.black87,
                      Icon(Icons.access_alarm, color: Colors.white, size: 20)),
                  CircleContainer(
                      50,
                      50,
                      Colors.green,
                      Icon(Icons.save_alt_rounded,
                          color: Colors.white, size: 20)),
                  CircleContainer(
                      40,
                      40,
                      Colors.blueAccent,
                      Icon(Icons.translate_sharp,
                          color: Colors.white, size: 20)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
