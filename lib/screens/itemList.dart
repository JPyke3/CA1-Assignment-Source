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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box),
        onPressed: () {
                GlobalKey<FormState> _key = GlobalKey<FormState>();
                showDialog(
                    context: context,
                    builder: (context) {
                      String tempItem;

                      return AlertDialog(
                        content: Form(
                          key: _key,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Item Name",
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
                                      widget.list.items.add(My2DItem(
                                          completed: false, name: tempItem));
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
          title: Text(widget.list.name),
        ),
        body: ListView.builder(
          itemBuilder: (context, i) {
            if (widget.list.items[i].completed) {
              return ListTile(
                  title: Text(widget.list.items[i].name),
                  onTap: () {},
                  trailing: Checkbox(
                    onChanged: (bool) {
                      setState(() {
                        widget.list.items[i].completed = bool;
                      });
                    },
                    value: true,
                  ));
            } else {
              return ListTile(
                title: Text(widget.list.items[i].name),
                onTap: () {},
                trailing: Checkbox(
                  onChanged: (bool) {
                    setState(() {
                      widget.list.items[i].completed = bool;
                    });
                  },
                  value: false,
                ),
              );
            }
          },
          itemCount: widget.list.items.length,
        ));
  }
}
