import 'package:flutter/material.dart';
import 'package:flutterteamproject/redux/viewmodel.dart';

class MyApp extends StatelessWidget {
  final ViewModel viewModel;

  MyApp(this.viewModel);
  @override
  Widget build(BuildContext context) {
    if (viewModel.todo != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text("My 2D ToDo"),
          actions: [IconButton(
            onPressed: () {},
          icon: Icon(Icons.settings))],
        ),
        body: ListView.builder(
          itemCount: viewModel.todo.length,
          itemBuilder: (BuildContext context, int i) {
            String name = viewModel.todo[i].name;
            return ListTile(
              onTap: () {},
              title: Text(name),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      );
    } else {
      return Scaffold(body: Container());
    }
  }
}

//ListTile

//Homework
//Do Maths
//Do History

// Raised Button
// FlatButton
// Page Views
// Navigation Bar
// Floating Action Button
// Drawer
// Material
// Padding
// Container
// CheckBox
