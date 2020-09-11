import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,

      body: Padding(

        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                  'U.S.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                    color: Colors.white,
                  ),

              ),
            ),

            Center(
              child: Text(
                'Covid-19',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0,
                  color: Colors.white,
                ),
              ),
            ),

            Center(
              child: Text(
                'Tracker',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/list');
                  },
                  label: Text('Open'),
                  icon: Icon(
                      Icons.arrow_forward
                  ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
