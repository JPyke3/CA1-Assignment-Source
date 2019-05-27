
import 'package:My2D2Do/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My2D2Do',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFFe9884b),
        accentColor: Color(0xFF4bace9),
      ),
      home: LoginScreen(),
    ));
  }
}
