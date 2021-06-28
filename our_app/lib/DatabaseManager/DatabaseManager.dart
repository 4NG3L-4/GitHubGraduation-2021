import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference profileList =
      FirebaseFirestore.instance.collection("Users");
//new user parameters
  Future<void> createUserData(String firstName, String lastName, String uid,
      String userType, String speciality) async {
    return await profileList.doc(uid).set({
      "First name": firstName,
      "Last name": lastName,
      "userType": userType,
      "Speciality": speciality,
    });
  }
}
