import 'package:portfolio/constants/constants.dart';

class MyProjects {
  String image = '';
  String title = '';
  String desc = '';
  MyProjects(this.image, this.title, this.desc);
}

List<MyProjects> myProjects = [
  MyProjects(movieImg, 'Movies App', 'An app to watch movies online'),
  MyProjects(motherboardImg, 'Home Automation',
      'Did Home Electric appliances automation using Arduino'),
  MyProjects(
      chatImg, 'Chat App', 'Online Chat App with firebase realtime database'),
  MyProjects(gameImg, 'Kids Game',
      'Unity based game to collect data of children\'s progress as he completes tasks'),
];
