import 'package:portfolio/constants/constants.dart';

class Education {
  String title = '';
  String subtitle = '';
  String year = '';
  String img = '';
  Education(this.title, this.subtitle, this.year, this.img);
}

List<Education> myEducation = [
  Education('Matric', "Biology as main subject", "2003-2015", schoolImg),
  Education('Punjab College', 'Intermediate in Computer Sciences', '2015-2017',
      collegeAnimatedIcon),
  Education('BSCS', "Computer Sciences", "2018-2022", unihatAnimatedIcon),
  Education('Achievements', "Multiple Friend of the year awards", "1999-2022",
      trophyAnimatedIcon),
];
