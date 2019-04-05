import 'package:My2D2Do/redux/actions.dart';
import 'package:My2D2Do/redux/middleware.dart';
import 'package:My2D2Do/redux/model.dart';
import 'package:My2D2Do/redux/reducers.dart';
import 'package:My2D2Do/redux/viewmodel.dart';
import 'package:My2D2Do/screens/myApp/myapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
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
