import 'package:flutter/material.dart';

import 'circular_progress.dart';

class CompleteCircleWidget extends StatelessWidget {
  final double dynamicSize;
  const CompleteCircleWidget({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: dynamicSize * 0.1, horizontal: dynamicSize * 0.1),
      child: SizedBox(
        height: dynamicSize * 0.35,
        width: double.maxFinite,
        child: Row(children: [
          Expanded(
            child: AnimatedCircularProgressIndicator(
                dynamicSize: dynamicSize, label: 'Web', percentage: 0.6),
          ),
          SizedBox(
            width: dynamicSize * 0.1,
          ),
          Expanded(
            child: AnimatedCircularProgressIndicator(
                dynamicSize: dynamicSize, label: 'C++', percentage: 0.9),
          ),
          SizedBox(
            width: dynamicSize * 0.1,
          ),
          Expanded(
            child: AnimatedCircularProgressIndicator(
                dynamicSize: dynamicSize, label: 'Flutter', percentage: 0.65),
          ),
        ]),
      ),
    );
  }
}
