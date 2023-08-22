import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ContactBar extends StatelessWidget {
  final double dynamicSize;
  const ContactBar({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dynamicSize,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            linkedInImg,
            color: Colors.white,
            height: dynamicSize * 0.1,
            width: dynamicSize * 0.1,
          ),
          Image.asset(
            githubImg,
            color: Colors.white,
            height: dynamicSize * 0.1,
            width: dynamicSize * 0.1,
          ),
          Image.asset(
            instagramImg,
            color: Colors.white,
            height: dynamicSize * 0.1,
            width: dynamicSize * 0.1,
          ),
        ],
      ),
    );
  }
}
