import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomMenuItem {
  final String icon;
  final String label;

  BottomMenuItem(@required this.icon, @required this.label)
      : assert(label != null),
        assert(icon != null);
}

class BottomBar extends StatelessWidget {
  final List<BottomMenuItem> items;

  BottomBar(@required this.items) : assert(items.length > 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final BottomMenuItem item = items[index];

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [SvgPicture.asset(item.icon), Text(item.label)],
            );
          })),
    );
  }
}
