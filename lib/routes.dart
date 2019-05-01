
import 'package:My2D2Do/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My2D2Do',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
        accentColor: Colors.green,
      ),
      home: LoginScreen(),
    ));
  }
}
