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
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(
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
            Positioned(
              bottom: 12,
              left: MediaQuery.of(context).size.width/2 - 152,
              child: RaisedButton(
                elevation: 4,
                padding: EdgeInsets.only(left: 140.0, right: 140.0, top: 12.0, bottom: 12.0),
                color: Theme.of(context).accentColor,
                onPressed: () {},
                child: Icon(Icons.add_box, color: Theme.of(context).canvasColor,),
              ), 
            )
          ],
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
