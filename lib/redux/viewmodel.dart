
import 'package:My2D2Do/redux/model.dart';
import 'package:redux/redux.dart';
import 'actions.dart';

class ViewModel {
  final List<ToDo> todo;
  final Function() fetchFromFirebase;

  ViewModel(this.todo, this.fetchFromFirebase);

  factory ViewModel.create(Store<AppState> store) {
    _onFetchFromFirebase() {
      store.dispatch(FetchListFromFirebase());
    }

    return ViewModel(store.state.todos, _onFetchFromFirebase);
  }
}