import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  final double dynamicSize;
  const BottomText({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Developed with \u2764 in Flutter,2023 By Usman Tariq,\nAll Rights Reserved',
      style: TextStyle(color: Colors.grey, fontSize: dynamicSize * 0.025),
      textAlign: TextAlign.center,
    );
  }
}
