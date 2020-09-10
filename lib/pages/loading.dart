import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void GoToNextScreen(){
    Navigator.pushReplacementNamed(context, '/list');
  }

  @override
  void initState() {

    super.initState();
    GoToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitRing(
            color: Colors.black,
            size: 50.0,
          )
      ),
    );
  }
}
