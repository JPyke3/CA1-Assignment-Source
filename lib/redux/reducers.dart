

import 'package:My2D2Do/redux/actions.dart';
import 'package:My2D2Do/redux/model.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(todos: todoReducer(state.todos, action));
}

List<ToDo> todoReducer(List<ToDo> state, action) {
  if (action is FetchedDataFromFirebase) {
    return action.todo;
  }
  return state;
}
