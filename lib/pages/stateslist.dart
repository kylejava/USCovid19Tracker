import 'package:flutter/material.dart';
import 'package:us_covid_tracker/services/data.dart';
//This file shows a list of states in the US that the user can choose to view

class ListOfStates extends StatefulWidget {
  @override
  _ListOfStatesState createState() => _ListOfStatesState();
}

class _ListOfStatesState extends State<ListOfStates> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select A State'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: InitialsOfStates.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('${InitialsOfStates[index]}'),
            trailing: RaisedButton.icon(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/loading', arguments: {
                    'index' : index,
                  });

                },
                icon: Icon(Icons.arrow_forward),
                label: Text(''),
            ),

          );

        },
      ),
    );
  }
}
