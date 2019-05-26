import 'package:My2D2Do/classes/My2DItem.dart';
import 'package:My2D2Do/classes/My2DList.dart';
import 'package:flutter/material.dart';
import 'package:My2D2Do/models/todos.dart';



class ItemList extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}
class _ListsState extends State<ItemList> {
  List<Todos> finalData = [];
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, i) {
          return ListTile(title: Text(finalData[i].name),
          onTap: (){
          },
          trailing: Icon(Icons.check_box_outline_blank),);
        },
        itemCount: finalData.length,
      )
      
    );
  }
}