import 'package:My2D2Do/screens/createAccountScreen.dart';
import 'package:flutter/material.dart';

import 'mainHome.dart';
class LoginScreen extends StatefulWidget {

  @override
  State createState() => new _LoginScreenState(); //login page class;
}


class _LoginScreenState extends State<LoginScreen> {
  //Variables for storing the actual username and password
  String _username;
  String _password;
  //The variable that holds the current state of the form, is used for validation and submission of the form
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        //
        backgroundColor: Colors.transparent,
        body: new Stack(
            fit: StackFit.expand, //does not cover entire screen without stretch
            children: <Widget>[
              //widget to house background
              new Image(
                image: new AssetImage(
                    "android/app/src/main/res/drawable/gbg.png"), //can replace this with any bg
                fit: BoxFit.cover, //cover entire screen
                color: Colors.white,
                colorBlendMode: BlendMode
                    .softLight, //darkens the background image with black45
              ),
              new Column(
                  //trying to import logo, fails as png?
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Image(
                      image: new AssetImage(
                          "android/app/src/main/res/drawable/logoanit.gif"),
                      //fit: BoxFit.scaleDown,   HLEP
                      //color: Colors.transparent,
                      //size: _iconAnimation.value * 100,
                    ),
                    new Form(
                      key: _formKey,
                      child: new Theme(        //wrapping form fields and container with a new widget
                        data: new ThemeData(
                            brightness: Brightness.light,
                            primarySwatch: Theme.of(context).accentColor,//Theme data for colors etc
                            inputDecorationTheme: new InputDecorationTheme(
                                labelStyle: new TextStyle(
                                    color: Theme.of(context).canvasColor, fontSize: 20.0))),
                        child: new Container(
                          //wrapped Column in a widget: to center the entry fields by inset from edge of screen by 40 pts
                          padding: const EdgeInsets.all(40.0),
                          child: new Column(
                              //New coloumn to load widget for username and password entry, inc. field entry
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new TextFormField(
                                  decoration: new InputDecoration(
                                    labelText: "Enter Email",
                                  ),
                                  onSaved: (user) => _username = user, // Function that changes the _username variable into what was inputted  
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                new TextFormField(
                                  decoration: new InputDecoration(
                                    labelText: "Enter Password",
                                  ),
                                  keyboardType: TextInputType.text,
                                  onSaved: (pass) => _password = pass, // Function that changes the _password variable into what was inputted
                                  obscureText: true,//hide text as stars
                                ),
                                new Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                ),
                                RaisedButton(
                                  color: Color(0xff4bace9),
                                  textColor: Colors.white,
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
                                  color: Color(0xffe9884b),
                                  textColor: Colors.white,
                                  child: Text("Guest Login"),
                                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp())),
                                ),
                                FlatButton(
                                  child: Text("Need an Account?"),
                                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount())),
                                )
                                
                                
                              ]),
                        ),
                      ),
                    )
                  ])
            ]));
  }
}
