import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String username;
  String password;
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Screen"),
      ),
      body: Form(
        key: _formKey,
              child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration( hintText: "Username"),
              onSaved: (user) => username = user,
            ),
            TextFormField(
              decoration: InputDecoration( hintText: "Username Verify"),
              onSaved: (user) => null,
            ),
            TextFormField(decoration: InputDecoration(hintText: "Password"),
            obscureText: true,
             onSaved: (pass) => password = pass,),
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
                  //The user and pass is stored in two variables called Username and password.
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