import 'package:flutter/material.dart';
import 'package:flutterteamproject/redux/viewmodel.dart';

class MyApp extends StatelessWidget {
  final ViewModel viewModel;

  MyApp(this.viewModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              ListTile(
                onTap: () {
                  print("Test");
                },
                leading: Icon(Icons.ac_unit),
                title: Text("Test"),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("ToDo App"),
      ),
    );
  }
}
