import 'package:My2D2Do/screens/createAccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:My2D2Do/models/auth.dart';

import 'mainHome.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Variables for storing the actual username and password
  String _username;
  String _password;
  //The variable that holds the current state of the form, is used for validation and submission of the form
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Form( //The form widget, will handle the submission of the form
        key: _formKey,
              child: Column(
          children: <Widget>[
            TextFormField(  
              decoration: InputDecoration( hintText: "Username"),
              onSaved: (user) => _username = user, // Function that changes the _username variable into what was inputted
            ),
            TextFormField(decoration: InputDecoration(hintText: "Password"),
            obscureText: true,  
             onSaved: (pass) => _password = pass, // Function that changes the _password variable into what was inputted
             ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                /*
                if(_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                    Auth.signIn(_username, _password);
                }
                */
              },
            ),
            FlatButton(
              child: Text("Need an Account?"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount())),
            ),
            FlatButton(
              child: Text("Guest Login"),
              onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp())),
            )
          ],
        ),
      ),
    );
  }

  void addToFirestore() {
    Firestore.instance.collection("todo").add({
      "name": "Clean the Backyard"
    });
  }

  void removeFromFirestore() {
    Firestore.instance.collection("todo").document("-LdsSlJ1PqP0wDE9mKK_").delete();
  }
}