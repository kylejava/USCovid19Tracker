import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/loading');
                  },
                  icon: Icon(
                      Icons.arrow_forward
                  ),
                  label: Text('Head to next screen')
              ),
            ),
          ],
        ),
      ),
    );
  }
}
