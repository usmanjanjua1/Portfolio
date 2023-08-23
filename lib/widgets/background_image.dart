import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class BackgroundImage extends StatelessWidget {
  final double dynamicSize;

  const BackgroundImage({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: dynamicSize * 0.7, // 40% of screen height
      decoration: const BoxDecoration(
          // color: Colors.amber,

          // image: DecorationImage(
          //   image: AssetImage(
          //       'assets/background.jpg'), // Replace with your image path
          //   fit: BoxFit.cover,
          // ),
          ),
      child: Image.asset(
        backImg,
        fit: BoxFit.cover,
      ),
    );
  }
}
