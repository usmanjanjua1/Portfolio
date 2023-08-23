import 'package:flutter/material.dart';

import '../models/education.dart';
import 'card_tile.dart';

class EducationTiles extends StatelessWidget {
  final double dynamicSize;
  const EducationTiles({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dynamicSize * 0.8,
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: myEducation.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardTile(
            screensize: dynamicSize,
            title: myEducation[index].title,
            subTitile: myEducation[index].subtitle,
            year: myEducation[index].year,
            img: myEducation[index].img,
          );
        },
      ),
    );
  }
}
