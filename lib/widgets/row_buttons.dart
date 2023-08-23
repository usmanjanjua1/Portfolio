import 'package:flutter/material.dart';

import 'custom_button.dart';

Widget webAppBar(dynamicSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CustomButton(txt: 'Services', dynamicSize: dynamicSize),
      CustomButton(txt: 'Experience', dynamicSize: dynamicSize),
      CustomButton(txt: 'Contact', dynamicSize: dynamicSize),
    ],
  );
}
