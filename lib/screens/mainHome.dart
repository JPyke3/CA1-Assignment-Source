import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'home.dart';
import 'lists.dart';

class MyApp extends StatefulWidget {
  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My 2D ToDo"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: PageView(
        children: <Widget>[Home(), Lists(), Text('p2'), Text('p3')],
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('Lists')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
        ],
        onTap: (page) {
          setState(() {
            currentPage = page;
            pageController.animateToPage(
              page,
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 200),
            );
          });
        },
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
