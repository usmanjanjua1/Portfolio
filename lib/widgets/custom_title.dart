import 'package:flutter/material.dart';

class customTitle extends StatelessWidget {
  final String txt;
  const customTitle({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        txt,
        style: const TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
