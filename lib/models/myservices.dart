import 'package:portfolio/constants/constants.dart';

class MyServices {
  String image = '';
  String title = '';
  String desc = '';
  MyServices(this.image, this.title, this.desc);
}

List<MyServices> myservices = [
  MyServices(webIcon, 'Web\nDevelopment', ''),
  MyServices(appIcon, 'Android\nDevelopment', ''),
  MyServices(gameIcon, 'Game\nDevelopment', ''),
  MyServices(databaseIcon, 'Database\nManagement', ''),
];
