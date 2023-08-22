// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String txt;

  const CustomButton({super.key, required this.txt});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    // return gradientButton(context);
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: ElevatedButton(
        onPressed: () {
          // Add your button functionality here
        },
        style: ElevatedButton.styleFrom(
            elevation: 10,
            shadowColor: Colors.black,
            splashFactory: InkSparkle.splashFactory,
            animationDuration: const Duration(seconds: 10),
            backgroundColor: _isHovered ? Colors.black54 : Colors.black45,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.13))),
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
          child: Text(
            widget.txt,
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.03,
            ),
          ),
        ),
      ),
    );
  }

  // MouseRegion gradientButton(BuildContext context) {
  //   return MouseRegion(
  //     onEnter: (_) => setState(() => _isHovered = true),
  //     onExit: (_) => setState(() => _isHovered = false),
  //     child: GestureDetector(
  //       onTap: () {},
  //       child: AnimatedContainer(
  //         duration: const Duration(milliseconds: 200),
  //         padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.015),
  //         decoration: BoxDecoration(
  //           gradient: _isHovered
  //               ? const LinearGradient(
  //                   colors: [Colors.grey, Colors.black],
  //                   begin: Alignment.topLeft,
  //                   end: Alignment.bottomRight,
  //                 )
  //               : null,
  //           color: _isHovered ? null : Colors.black38,
  //           borderRadius:
  //               BorderRadius.circular(MediaQuery.of(context).size.width * 0.03),
  //         ),
  //         child: Text(
  //           widget.txt,
  //           style: const TextStyle(color: Colors.white),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
