import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  //Variables for storing the actual username and password
  String _username;
  String _password;
  //The variable that holds the current state of the form, is used for validation and submission of the form
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top App Bar
      appBar: AppBar(
        title: Text("Sign Up Screen"),
      ),
      body: Form( //The form widget, will handle the submission of the form
        key: _formKey,
              child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration( hintText: "Username"),
              onSaved: (user) => _username = user, // Function that changes the _username variable into what was inputted
            ),
            TextFormField(
              decoration: InputDecoration( hintText: "Username Verify"),
              onSaved: (user) => null,
            ),
            TextFormField(decoration: InputDecoration(hintText: "Password"),
            obscureText: true,
             onSaved: (pass) => _password = pass, // Function that changes the _password variable into what was inputted
             ), 
             TextFormField(
              decoration: InputDecoration( hintText: "Password Verify"),
              onSaved: (pass) => null,
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
              child: Text("Already Have An Account?"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}