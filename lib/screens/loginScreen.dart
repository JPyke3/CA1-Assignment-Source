import 'package:My2D2Do/screens/createAccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState(); //login page class;
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController
      _iconAnimationController; //animation doesn't work with imported asset of logo, null code for now
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward(); //end of animation loader (doesn't work)
  }

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
                    "android/app/src/main/res/drawable/gbg.png"), //ask what to use here;can replace
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
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                new TextFormField(
                                  decoration: new InputDecoration(
                                    labelText: "Enter Password",
                                  ),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,//hide text as stars
                                ),
                                new Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                ),
                                new MaterialButton(
                                    //The Login button at bottom
                                    color: Color(0xff4bace9),
                                    textColor: Colors.white,
                                    child: new Text("Login")),
                                new MaterialButton(
                                    color: const Color(0xffe9884b),
                                    textColor: Colors.white,
                                    child: new Text("Guest User"))
                              ]),
                        ),
                      ),
                    )
                  ])
            ]));
  }
}
