import 'package:firebase_auth/firebase_auth.dart';

class UserAuth {
    //To sign in a current User
  Future<String> signIn(String email, String password) async{
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth
        .signInWithEmailAndPassword(
            email: email, password: password);
    return email;
  }
}