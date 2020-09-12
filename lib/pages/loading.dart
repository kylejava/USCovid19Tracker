import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Map ChosenState = {}; //Contains the name of the state the user has chosen, along with the index so it can be used for the api


  void GoToNextScreen() async {
    Response  response = await get('https://api.covidtracking.com/v1/states/current.json');
   List data = jsonDecode(response.body);

    Navigator.pushReplacementNamed(context, '/display' , arguments: {
      'InitialOfState' : data[ChosenState['index']]['state'],
      'NameOfState': ChosenState['nameOfState'],
      'TotalCases': data[ChosenState['index']]['total'],
      'NegativeCases': data[ChosenState['index']]['negative'],
      'PositiveCases': data[ChosenState['index']]['positive'],
      'TotalDeaths': data[ChosenState['index']]['death'],
      'LastUpdated': data[ChosenState['index']]['lastUpdateEt'],

    });
  }



  @override
  void initState() {

    super.initState();
    GoToNextScreen();
  }

  @override
  Widget build(BuildContext context) {

   ChosenState = ModalRoute.of(context).settings.arguments;



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
