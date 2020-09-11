import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Map index = {};
  var i = 0;

  void GoToNextScreen() async {
    Response  response = await get('https://api.covidtracking.com/v1/states/current.json');
   List data = jsonDecode(response.body);

    Navigator.pushReplacementNamed(context, '/display' , arguments: {
      'state' : data[index['index']]['state'],
    });
  }



  @override
  void initState() {

    super.initState();
    GoToNextScreen();
  }

  @override
  Widget build(BuildContext context) {

    index = ModalRoute.of(context).settings.arguments;
    i = index['index'];


    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(

            'Loading',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,

            ),
          ),
          SpinKitRing(
            color: Colors.black,
            size: 50.0,
          )
        ],
      ),
    );
  }
}
