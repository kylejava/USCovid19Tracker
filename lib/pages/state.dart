import 'package:flutter/material.dart';

//This file displays the covid cases for a single state

class DisplayState extends StatefulWidget {
  @override
  _DisplayStateState createState() => _DisplayStateState();
}

class _DisplayStateState extends State<DisplayState> {

  Map stat = {};

  @override
  Widget build(BuildContext context) {

   stat = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushReplacementNamed(context , '/list');
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
              label: Text('')

            ),
          ],
        ),
      ),
      body: Center(
        child: Text(stat['state']),
      ),
    );
  }
}
