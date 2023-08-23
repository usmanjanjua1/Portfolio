import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ContactBar extends StatelessWidget {
  final double dynamicSize;
  const ContactBar({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    double staticsize = 0.08;
    return SizedBox(
      width: dynamicSize,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            linkedInImg,
            color: Colors.white,
            height: dynamicSize * staticsize,
            width: dynamicSize * staticsize,
          ),
          Image.asset(
            githubImg,
            color: Colors.white,
            height: dynamicSize * staticsize,
            width: dynamicSize * staticsize,
          ),
          Image.asset(
            instagramImg,
            color: Colors.white,
            height: dynamicSize * staticsize,
            width: dynamicSize * staticsize,
          ),
        ],
      ),
    );
  }
}
