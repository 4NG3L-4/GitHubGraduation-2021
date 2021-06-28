import 'package:firebase_auth/firebase_auth.dart';
import 'package:our_app/DatabaseManager/DatabaseManager.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

// registration with email and password

  Future createNewUser(String email, String password, String firstName,
      String lastName, String userType, String speciality) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      await DatabaseManager()
          .createUserData(firstName, lastName, user.uid, userType, speciality);

      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  // sign with email and password

  Future loginUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }

  // signout

  Future signOut() async {
    try {
      return _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
