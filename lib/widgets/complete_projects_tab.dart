import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/projects.dart';
import '../utils/responsive.dart';
import 'projects_tile.dart';

class ProjectsView extends StatelessWidget {
  final double dynamicSize;
  const ProjectsView({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        itemCount: myProjects.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return ProjectsTile(
            screensize: dynamicSize,
            img: myProjects[index].image,
            title: myProjects[index].title,
            subTitile: myProjects[index].desc,
            link: myProjects[index].videoLink,
          );
        },
        options: CarouselOptions(
          scrollDirection: Axis.vertical,
          height: dynamicSize * 0.8,
          enableInfiniteScroll: true,
          initialPage: 0,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 3),
          disableCenter: Responsive.isMobile(context) ? true : false,
        ),
      ),
    );
  }
}
