import 'package:flutter/material.dart';

import '../widgets/circular_progress.dart';

class CompleteLinearProgressWidget extends StatelessWidget {
  final double dynamicSize;
  const CompleteLinearProgressWidget({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(dynamicSize * 0.07),
      child: const Column(
        children: [
          AnimatedLinearProgressIndicator(percentage: 0.9, label: 'C++'),
          AnimatedLinearProgressIndicator(percentage: 0.8, label: 'HTML'),
          AnimatedLinearProgressIndicator(percentage: 0.6, label: 'CSS'),
          AnimatedLinearProgressIndicator(percentage: 0.3, label: 'Kotlin'),
          AnimatedLinearProgressIndicator(percentage: 0.7, label: 'Dart'),
        ],
      ),
    );
  }
}
