import 'package:flutterteamproject/redux/model.dart';
import 'package:redux/redux.dart';

class ViewModel {
  final List<ToDo> todo;

  ViewModel(this.todo);

  factory ViewModel.create(Store<AppState> store) {
    return ViewModel(store.state.todos);
  }
}