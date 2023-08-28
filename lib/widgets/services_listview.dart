import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/myservices.dart';
import '../utils/responsive.dart';

class ServicesListview extends StatelessWidget {
  final double dynamicSize;
  const ServicesListview({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        itemCount: myservices.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return serviceCard(index);
        },
        options: CarouselOptions(
          height: dynamicSize * 0.6,
          enableInfiniteScroll: true,
          initialPage: 0,
          viewportFraction: 0.85,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 3),
          disableCenter: Responsive.isMobile(context) ? true : false,
          // scrollDirection:
        ),
      ),
    );
  }

  Widget serviceCard(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: dynamicSize * 0.06),
      child: Card(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              myservices[index].image,
              color: Colors.cyan.withOpacity(0.35),
              height: dynamicSize * 0.3,
              width: dynamicSize * 0.3,
            ),
            SizedBox(
              height: dynamicSize * 0.06,
            ),
            Text(
              myservices[index].title,
              style:
                  TextStyle(color: Colors.white, fontSize: dynamicSize * 0.05),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
