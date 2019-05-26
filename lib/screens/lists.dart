import 'package:My2D2Do/classes/My2DList.dart';
import 'package:My2D2Do/data/dummyData.dart';
import 'package:flutter/material.dart';
import 'package:My2D2Do/screens/itemList.dart';


class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List<My2DList> dummyData = DummyData.dummyData;
  
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