import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.width * 0.7, // 40% of screen height
      decoration: const BoxDecoration(
          // color: Colors.amber,

          // image: DecorationImage(
          //   image: AssetImage(
          //       'assets/background.jpg'), // Replace with your image path
          //   fit: BoxFit.cover,
          // ),
          ),
      child: Image.asset(
        'assets/background1.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
