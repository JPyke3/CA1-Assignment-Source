import 'package:My2D2Do/classes/My2DItem.dart';
import 'package:My2D2Do/classes/My2DList.dart';
import 'package:flutter/material.dart';
import 'package:My2D2Do/models/todos.dart';



class ItemList extends StatefulWidget {
  final My2DList list;

  const ItemList({Key key, @required this.list}) : super(key: key);
  @override
  _ListsState createState() => _ListsState();
}
class _ListsState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.list.name),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return ListTile(title: Text(widget.list.items[i].name),
          onTap: (){
          },
          trailing: Icon(Icons.check_box_outline_blank),);
        },
        itemCount: widget.list.items.length,
      )
      
    );
  }
}