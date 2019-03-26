import 'package:flutter/material.dart';
import 'package:flutterteamproject/redux/middleware.dart';
import 'package:flutterteamproject/redux/model.dart';
import 'package:flutterteamproject/redux/reducers.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterteamproject/redux/viewmodel.dart';
import 'package:flutterteamproject/screens/myApp/myapp.dart';
import 'package:flutterteamproject/redux/actions.dart';
import 'package:redux/redux.dart';

class Routes {
  Routes() {
    final Store<AppState> store = Store<AppState>(appStateReducer,
        initialState: AppState.initialState(), middleware: [MiddleWare()]);
    runApp(StoreProvider(
        store: store,
        child: StoreConnector<AppState, ViewModel>(
          converter: (Store<AppState> store) => ViewModel.create(store),
          onInit: ((store) => store.dispatch(FetchListFromFirebase())),
          builder: (BuildContext context, ViewModel viewModel) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                brightness: Brightness.light,
                primaryColor: Colors.red,
                accentColor: Colors.green,
              ),
              home: MyApp(viewModel),
            );
          },
        )));
  }
}
