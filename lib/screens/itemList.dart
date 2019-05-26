import 'package:My2D2Do/classes/My2DItem.dart';
import 'package:My2D2Do/classes/My2DList.dart';
import 'package:flutter/material.dart';
import 'package:My2D2Do/models/todos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ItemList extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}
class _ListsState extends State<ItemList> {
  List<My2DList> dummyData = [
    My2DList(
      name: 'Grocery Shopping', 
      description: '', 
      items: [
        My2DItem(name: 'Apples', timeMade: 1, completed: false),
        My2DItem(name: 'Oranges', timeMade: 1, completed: false),
        My2DItem(name: 'Bananas', timeMade: 1, completed: false),
    ]),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, i) {
          return ListTile(title: Text(dummyData[i].name),
          onTap: (){
          },
          trailing: Icon(Icons.check_box_outline_blank),);
        },
        itemCount: dummyData.length,
      )
      
    );
  }
}