import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Developed with \u2764 in Flutter,2023 By Usman Tariq,\nAll Rights Reserved',
      style: TextStyle(color: Colors.grey, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }
}
