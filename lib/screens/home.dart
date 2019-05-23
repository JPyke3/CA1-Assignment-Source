import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CameraPosition home = CameraPosition(target: LatLng(-37.809113, 144.964640), zoom: 16.0);
  
  @override
  Widget build(BuildContext context) {
    return GoogleMap(initialCameraPosition: home);
  }
}