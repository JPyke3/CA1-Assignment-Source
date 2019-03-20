import 'package:cloud_firestore/cloud_firestore.dart';

class Todos {
  final String name;

  Todos(this.name);

  static Future<List<Todos>> fetch() async {
    List<Todos> finalData = [];
   QuerySnapshot data = await Firestore.instance.collection("todo").getDocuments();
   for (var i = 0; i < data.documents.length; i++) {
     finalData.add(Todos(data.documents[i].data["name"]));
   }
   return finalData;
  }
}