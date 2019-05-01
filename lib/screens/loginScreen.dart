import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username;
  String password;
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Form(
        key: _formKey,
              child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration( hintText: "Username"),
              onSaved: (user) => username = user,
            ),
            TextFormField(decoration: InputDecoration(hintText: "Password"),
            obscureText: true,
             onSaved: (pass) => password = pass,),
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                if(_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  //TODO: Brendan this is where you will put the logic for your username and password authentication
                  //The user and pass is stored in two variables called Username and password.
                }
              },
            )
          ],
        ),
      ),
    );
  }
}