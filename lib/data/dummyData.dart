import 'package:My2D2Do/classes/My2DItem.dart';
import 'package:My2D2Do/classes/My2DList.dart';

class DummyData {
  static List<My2DList> dummyData = [
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

  static void addListToData(String name, {String description:""}) {
    dummyData.add(My2DList(items: [], name: name, description: description));
  }

  static void removeListFromData(My2DList item) {
    dummyData.remove(item);
  }
}