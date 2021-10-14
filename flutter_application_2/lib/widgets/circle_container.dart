import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final double alto;
  final double ancho;
  final dynamic color;
  final Widget icon;

  CircleContainer(@required this.alto, @required this.ancho,
      @required this.color, @required this.icon)
      : assert(alto != null),
        assert(ancho != null),
        assert(icon != null),
        assert(color != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.alto,
      width: this.ancho,
      alignment: Alignment.center,
      child: icon,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
