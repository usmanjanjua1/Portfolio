import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/education.dart';
import '../utils/responsive.dart';
import 'card_tile.dart';

class EducationTiles extends StatelessWidget {
  final double dynamicSize;
  const EducationTiles({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: dynamicSize * 0.8,
    //   width: double.maxFinite,
    //   child: ListView.builder(
    //     itemCount: myEducation.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return CardTile(
    //         screensize: dynamicSize,
    //         title: myEducation[index].title,
    //         subTitile: myEducation[index].subtitle,
    //         year: myEducation[index].year,
    //         img: myEducation[index].img,
    //       );
    //     },
    //   ),
    // );
    return Center(
      child: CarouselSlider.builder(
        itemCount: myEducation.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return CardTile(
            screensize: dynamicSize,
            title: myEducation[index].title,
            subTitile: myEducation[index].subtitle,
            year: myEducation[index].year,
            img: myEducation[index].img,
          );
        },
        options: CarouselOptions(
          height: dynamicSize * 0.8,
          enableInfiniteScroll: true,
          initialPage: 0,
          viewportFraction: 0.85,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 3),
          disableCenter: Responsive.isMobile(context) ? true : false,
        ),
      ),
    );
  }
}
