// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_roundbutton.dart';

void showAlertDialog(BuildContext context, double dynamicSize) {
  String name = "";
  String email = "";
  String message = "";

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation: 20,
        backgroundColor: Colors.white.withOpacity(0.93),
        title: const Text(
          'Send Message',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onChanged: (value) {
                name = value;
              },
            ),
            SizedBox(
              height: dynamicSize * 0.02,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onChanged: (value) {
                email = value;
              },
            ),
            SizedBox(
              height: dynamicSize * 0.02,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Message',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onChanged: (value) {
                message = value;
              },
            ),
            SizedBox(
              height: dynamicSize * 0.03,
            ),
            CustomTextButton(
              padding: EdgeInsets.all(dynamicSize * 0.028),
              text: 'Send',
              onTab: () {
                Navigator.pop(context);
              },
              color: Colors.white,
              fontSize: dynamicSize * 0.035,
              backgroundColor: Colors.cyan.withOpacity(0.6),
            )
          ],
        ),
        // actions: [],
      );
    },
  );
}
