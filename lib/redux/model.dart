import 'package:flutter/foundation.dart';

class AppState {
  final List<ToDo> todos;

  AppState({@required this.todos});

  AppState.initialState()
    : todos = null;
}

class ToDo {
  final String name;
  final double time;

  ToDo(this.name, this.time);
}