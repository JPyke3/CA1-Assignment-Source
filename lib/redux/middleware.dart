
import 'package:My2D2Do/redux/actions.dart';
import 'package:My2D2Do/redux/model.dart';
import 'package:redux/redux.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MiddleWare extends MiddlewareClass<AppState> {
  @override
  void call(Store<AppState> store, action, NextDispatcher next) {
    if (action is FetchListFromFirebase) {
      loadToDoFromFirebase().then((val) {
        store.dispatch(FetchedDataFromFirebase(val));
      });
    }
    next(action);
  }

  Future<List<ToDo>> loadToDoFromFirebase() async {
    List<ToDo> data = [];
    QuerySnapshot snapshot;
    try {
    snapshot =
        await Firestore.instance.collection("todo").getDocuments();
    } catch (e) {
      print(e);
    }
    for (var i = 0; i < snapshot.documents.length; i++) {
      data.add(ToDo(snapshot.documents[i].data["name"], 1));
    }
    return data;
  }
}
