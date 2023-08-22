import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class Education {
  String title = '';
  String subtitle = '';
  String year = '';
  String img = '';
  Education(this.title, this.subtitle, this.year, this.img);
}

List<Education> myEducation = [
  Education('Matric', "Biology as main subject", "2015", myImg),
  Education('Punjab College', 'Intermediate in Computer Sciences', '2017',
      "assets/school.png"),
  Education('BSCS', "Computer Sciences", "2018-2022", ucpImg),
  Education(
      'Punjab College',
      'Intermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer SciencesIntermediate in Computer Sciences',
      '2015-2017',
      pgcImg),
  Education('Matric', "Biology as main subject", "2015", schoolImg),
  Education(
      'Punjab College', 'Intermediate in Computer Sciences', '2017', pgcImg),
];
