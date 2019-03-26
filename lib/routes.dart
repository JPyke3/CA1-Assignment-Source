import 'package:flutter/material.dart';
import 'package:flutterteamproject/redux/middleware.dart';
import 'package:flutterteamproject/redux/model.dart';
import 'package:flutterteamproject/redux/reducers.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterteamproject/redux/viewmodel.dart';
import 'package:flutterteamproject/screens/myApp/myapp.dart';
import 'package:redux/redux.dart';

class Routes {
  Routes() {
    final Store<AppState> store = Store<AppState>(appStateReducer,
        initialState: AppState.initialState(), middleware: [MiddleWare()]);
    runApp(StoreProvider(
        store: store,
        child: StoreConnector<AppState, ViewModel>(
          converter: (Store<AppState> store) => ViewModel.create(store),
          builder: (BuildContext context, ViewModel viewModel) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.red,
                accentColor: Colors.blue,
              ),
              home: MyApp(viewModel),
            );
          },
        )));
  }
}
