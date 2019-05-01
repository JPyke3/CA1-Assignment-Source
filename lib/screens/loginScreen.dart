import 'package:My2D2Do/screens/createAccountScreen.dart';
import 'package:flutter/material.dart';

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
                if(_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  //TODO: Brendan this is where you will put the logic for your username and password authentication
                  //The user and pass is stored in two variables called _username and _password.
                }
              },
              
            ),
            FlatButton(
              child: Text("Need an Account?"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount())),
            )
          ],
        ),
      ),
    );
  }
}