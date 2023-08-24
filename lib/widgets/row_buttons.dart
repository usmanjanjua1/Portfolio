import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_roundbutton.dart';

Widget webAppBar(dynamicSize) {
  return Padding(
    padding: EdgeInsets.all(dynamicSize * 0.03),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // CustomButton(txt: 'Services', dynamicSize: dynamicSize),
        // CustomButton(txt: 'Experience', dynamicSize: dynamicSize),
        // CustomButton(txt: 'Contact', dynamicSize: dynamicSize),
        CustomTextButton(
          padding: EdgeInsets.all(dynamicSize * 0.026),
          text: 'Service',
          onTab: () {},
          color: Colors.white,
          fontSize: dynamicSize * 0.04,
          backgroundColor: Colors.white12,
        ),
        CustomTextButton(
          padding: EdgeInsets.all(dynamicSize * 0.024),
          text: 'Experience',
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
