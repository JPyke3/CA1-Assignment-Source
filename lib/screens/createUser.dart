import 'package:firebase_auth/firebase_auth.dart';

class UserAuth {
    //To create new User
  Future<String> createUser(String email, String password) async{
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth
        .createUserWithEmailAndPassword(
            email: email, password: password);
    return email;
  }
}