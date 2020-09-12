import 'package:flutter/material.dart';
import 'package:us_covid_tracker/pages/loading.dart';
import 'package:us_covid_tracker/pages/state.dart';
import 'package:us_covid_tracker/pages/stateslist.dart';
import 'package:us_covid_tracker/pages/home.dart';
import 'package:us_covid_tracker/pages/info.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/loading': (context) => Loading(),
        '/list': (context) => ListOfStates(),
        '/display': (context) => DisplayState(),
        '/info' : (context) => Info(),
      },
    );
  }
}
