import 'package:flutter/material.dart';

//This file displays the covid cases for a single state

class DisplayState extends StatefulWidget {
  @override
  _DisplayStateState createState() => _DisplayStateState();
}

class _DisplayStateState extends State<DisplayState> {

  Map stat = {}; //This holds all the stats of the state: the name, the positive cases, total cases, deaths, etc.

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
            Center(
              child: Text(
                'Covid-19 Statistics',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.0,),
            Text( // Header
              stat['NameOfState'] + ' (' + stat['InitialOfState']+ ')',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Divider(thickness: 2.5,),

            SizedBox(height: 70.0,),
            Text( // Total Cases
              'Total Cases',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              stat['TotalCases'].toString(),
              style: TextStyle(

                fontSize: 25.0,
              ),
            ),

            SizedBox(height: 20.0,),
            Text( // Total Positive Cases
              'Positive Cases',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              stat['PositiveCases'].toString(),
              style: TextStyle(

                fontSize: 25.0,
              ),
            ),

            SizedBox(height: 20.0,),
            Text( // Total Deaths
              'Deaths in ' + stat['NameOfState'] ,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              stat['TotalDeaths'].toString(),
              style: TextStyle(

                fontSize: 25.0,
              ),
            ),
        
            SizedBox(height: 50.0,),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Text( // Last Updated
                  'Last Updated: ' + stat['LastUpdated'] +' EST',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
