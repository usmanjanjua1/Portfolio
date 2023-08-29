import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/education.dart';
import '../models/myservices.dart';
import '../models/projects.dart';

// Future<void> fetchDataFromFirestore() async {
//   final CollectionReference personCollection =
//       FirebaseFirestore.instance.collection('Me');

//   // Assume you have a specific person document ID
//   String personDocId = 'Usman Tariq'; // Replace with the actual document ID

//   // Get the person document reference
//   DocumentSnapshot personDocSnapshot =
//       await personCollection.doc(personDocId).get();

//   // Get data from the document snapshot
//   Map<String, dynamic> data = personDocSnapshot.data() as Map<String, dynamic>;

//   if (data != null) {
//     // Fetch myEducation data
//     List<dynamic> educationList = data['myEducation'];
//     myEducation = educationList.map((edu) {
//       return Education(
//         edu['title'],
//         edu['subtitle'],
//         edu['year'],
//         edu['img'],
//       );
//     }).toList();

//     // Fetch myservices data
//     List<dynamic> servicesList = data['myservices'];
//     myservices = servicesList.map((service) {
//       return MyServices(
//         service['image'],
//         service['title'],
//         service['desc'],
//       );
//     }).toList();

//     // Fetch myProjects data
//     List<dynamic> projectsList = data['myProjects'];
//     myProjects = projectsList.map((project) {
//       return MyProjects(
//         project['image'],
//         project['title'],
//         project['desc'],
//       );
//     }).toList();

//     print('Data fetched from Firestore and lists populated.');
//   } else {
//     print('No data found in Firestore for the given document ID.');
//   }
// }

class FetchDataProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  bool _fetched = false;
  bool get fetched => _fetched;

  Future<void> fetchDataFromFirestore(String personDocId) async {
    _isLoading = true;

    final CollectionReference personCollection =
        FirebaseFirestore.instance.collection('Me');

    try {
      DocumentSnapshot personDocSnapshot =
          await personCollection.doc(personDocId).get();

      Map<String, dynamic> data =
          personDocSnapshot.data() as Map<String, dynamic>;

      if (data != null) {
        List<dynamic> educationList = data['myEducation'];
        myEducation = educationList.map((edu) {
          return Education(
            edu['title'],
            edu['subtitle'],
            edu['year'],
            edu['img'],
          );
        }).toList();

        List<dynamic> servicesList = data['myservices'];
        myservices = servicesList.map((service) {
          return MyServices(
            service['image'],
            service['title'],
            service['desc'],
          );
        }).toList();

        List<dynamic> projectsList = data['myProjects'];
        myProjects = projectsList.map((project) {
          return MyProjects(
            project['image'],
            project['title'],
            project['desc'],
          );
        }).toList();
        _fetched = true;
        notifyListeners();
        print('Data fetched from Firestore and lists populated.');
      } else {
        print('No data found in Firestore for the given document ID.');
      }
    } catch (error) {
      print('Error fetching data: $error');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
