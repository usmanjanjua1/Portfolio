import 'package:flutter/material.dart';

class ForegroundContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Foreground Components',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Your foreground content goes here.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Add your button functionality here
            },
            child: Text('Button'),
          ),
        ],
      ),
    );
  }
}
