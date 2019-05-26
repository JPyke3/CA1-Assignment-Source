import 'package:My2D2Do/classes/My2DItem.dart';
import 'package:My2D2Do/classes/My2DList.dart';
import 'package:flutter/material.dart';
import 'package:My2D2Do/screens/itemList.dart';


class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List<My2DList> dummyData = [
    My2DList(
      name: 'Grocery Shopping', 
      description: '', 
      items: [
        My2DItem(name: 'Apples', timeMade: 1, completed: false),
        My2DItem(name: 'Oranges', timeMade: 1, completed: false),
        My2DItem(name: 'Bananas', timeMade: 1, completed: false),
    ]),
    My2DList(
      name: 'Grocery Shopping2', 
      description: '', 
      items: [
        My2DItem(name: 'Apples2', timeMade: 1, completed: false),
        My2DItem(name: 'Oranges2', timeMade: 1, completed: false),
        My2DItem(name: 'Bananas2', timeMade: 1, completed: false),
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, i) {
          return ListTile(title: Text(dummyData[i].name),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ItemList(list: dummyData[i],)));
          },
          trailing: Icon(Icons.chevron_right),);
        },
        itemCount: dummyData.length,
      )
      
    );
  }
}