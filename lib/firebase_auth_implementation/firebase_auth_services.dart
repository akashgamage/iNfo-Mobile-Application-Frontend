

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//signup
Future<User?> signUpWithEmailAndPassword( String email, String password) async{

  try {
    UserCredential credential = await _auth.createUserWithEmailAndPassword(
      
      email: email,
      password: password
    );
    return credential.user;
  } catch (e) {
    print('Error in signUpWithEmailAndPassword: $e');
  }
  return null;
}

//sign in
Future<User?> signInWithEmailAndPassword(String email, String password) async{

  try {
    UserCredential credential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password
    );
    return credential.user;
  } catch (e) {
    print('something happened here');
  }
  return null;
}


}