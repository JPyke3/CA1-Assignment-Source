import 'package:flutterteamproject/redux/model.dart';

class FetchListFromFirebase {}

class FetchedDataFromFirebase {
  final List<ToDo> todo;

  FetchedDataFromFirebase(this.todo);
}

class DeleteItem {
  final ToDo todo;

  DeleteItem(this.todo);
}