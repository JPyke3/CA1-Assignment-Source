import 'package:My2D2Do/data/dummyData.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'lists.dart';
import 'settings.dart';

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
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Add A List"),
        icon: Icon(Icons.add_box),
        onPressed: () {
          GlobalKey<FormState> _key = GlobalKey<FormState>();
          String tempItem;
          showDialog(context: context, builder: (context) {
            return AlertDialog(
                        content: Form(
                          key: _key,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "List Name",
                                ),
                                onSaved: (value) {
                                  tempItem = value;
                                },
                                onFieldSubmitted: (value) {
                                  tempItem = value;
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: RaisedButton(
                                  child: Text("Add"),
                                  color: Theme.of(context).primaryColor,
                                  onPressed: () {
                                    setState(() {
                                      _key.currentState.save();
                                      DummyData.addListToData(tempItem);
                                      Navigator.pop(context);
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      );
          });
        },
      ),
      appBar: AppBar(
        title: Text("My 2D ToDo"),
      ),
      body: PageView(
        children: <Widget>[Home(), Lists(), Settings(), Text('p3')],
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
