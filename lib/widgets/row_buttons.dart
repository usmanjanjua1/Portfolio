import 'package:flutter/material.dart';

import 'custom_roundbutton.dart';

Widget webAppBar(dynamicSize) {
  return Padding(
    padding: EdgeInsets.all(dynamicSize * 0.03),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextButton(
          padding: EdgeInsets.all(dynamicSize * 0.026),
          text: 'Services',
          onTab: () {},
          color: Colors.white,
          fontSize: dynamicSize * 0.04,
          backgroundColor: Colors.white12,
        ),
        CustomTextButton(
          padding: EdgeInsets.all(dynamicSize * 0.024),
          text: 'Skills',
          onTab: () {},
          color: Colors.white,
          fontSize: dynamicSize * 0.04,
          backgroundColor: Colors.white12,
        ),
        CustomTextButton(
          padding: EdgeInsets.all(dynamicSize * 0.024),
          text: 'Contact',
          onTab: () {},
          color: Colors.white,
          fontSize: dynamicSize * 0.04,
          backgroundColor: Colors.white12,
        ),
      ],
    ),
  );
}
