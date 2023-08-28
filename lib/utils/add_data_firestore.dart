import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/models/mycontact.dart';

import '../models/education.dart';
import '../models/myservices.dart';
import '../models/projects.dart';

// Future<void> uploadDataToFirestore() async {
//   final CollectionReference personCollection =
//       FirebaseFirestore.instance.collection('Me');

//   // Assume you have a specific person document ID
//   String personDocId = 'Usman Tariq'; // Replace with the actual document ID

//   // Get the person document reference
//   DocumentReference personDocRef = personCollection.doc(personDocId);

//   // Prepare the data for upload
//   Map<String, dynamic> data = {
//     'myEducation': myEducation.map((education) {
//       return {
//         'title': education.title,
//         'subtitle': education.subtitle,
//         'year': education.year,
//         'img': education.img,
//       };
//     }).toList(),
//     'myservices': myservices.map((service) {
//       return {
//         'image': service.image,
//         'title': service.title,
//         'desc': service.desc,
//       };
//     }).toList(),
//     'myProjects': myProjects.map((project) {
//       return {
//         'image': project.image,
//         'title': project.title,
//         'desc': project.desc,
//       };
//     }).toList(),
//   };

//   // Upload the data to Firestore
//   await personDocRef.set(data);

//   print('Data uploaded to Firestore.');
// }

Future<void> fetchDataFromFirestore() async {
  final CollectionReference personCollection =
      FirebaseFirestore.instance.collection('Me');

  // Assume you have a specific person document ID
  String personDocId = 'Usman Tariq'; // Replace with the actual document ID

  // Get the person document reference
  DocumentSnapshot personDocSnapshot =
      await personCollection.doc(personDocId).get();

  // Get data from the document snapshot
  Map<String, dynamic> data = personDocSnapshot.data() as Map<String, dynamic>;

  if (data != null) {
    // Fetch myEducation data
    List<dynamic> educationList = data['myEducation'];
    myEducation = educationList.map((edu) {
      return Education(
        edu['title'],
        edu['subtitle'],
        edu['year'],
        edu['img'],
      );
    }).toList();

    // Fetch myservices data
    List<dynamic> servicesList = data['myservices'];
    myservices = servicesList.map((service) {
      return MyServices(
        service['image'],
        service['title'],
        service['desc'],
      );
    }).toList();

    // Fetch myProjects data
    List<dynamic> projectsList = data['myProjects'];
    myProjects = projectsList.map((project) {
      return MyProjects(
        project['image'],
        project['title'],
        project['desc'],
      );
    }).toList();

    print('Data fetched from Firestore and lists populated.');
  } else {
    print('No data found in Firestore for the given document ID.');
  }
}
