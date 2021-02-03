import 'package:flutter/material.dart';
import 'dart:async';

class TabBarV extends StatefulWidget {
  @override
  _TabBarVState createState() => _TabBarVState();
}

class _TabBarVState extends State<TabBarV> {
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<DateTime> _selectDate(BuildContext context) async => showDatePicker(
        context: context,
        initialDate: DateTime.now().add(Duration(seconds: 1)),
        firstDate: DateTime(1990),
        lastDate: DateTime(2100),
      );

  /*if (picked != null && picked != _date) {
      print('Date Selected: ${_date.toString()}');
      setState(() {
        _date = picked;
      });
    }*/

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );

    if (picked != null && picked != _time) {
      print('Date Selected: ${_time.toString()}');
      setState(() {
        _time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.android),
              text: "Tab 1",
            ),
            Tab(
              icon: Icon(Icons.phone_iphone),
              text: "Tab 2",
            ),
          ]),
          title: Text("Tab Bar View"),
        ),
        body: TabBarView(
          children: [
            //Image.asset('assets/date.jpeg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Column(
                children: <Widget>[
                  Text(
                    'Date Selected: ${_date.toString()}',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  RaisedButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    child: Text("Select Date"),
                  ),
                  Text(
                    'Date Selected: ${_date.toString()}',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  RaisedButton(
                    onPressed: () {
                      _selectTime(context);
                    },
                    child: Text("Select Time"),
                  )
                ],
              )),
            ),
            Center(
                /*child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(5.0)),

                  DropdownButton<String>
                  (
                    items: [
                      DropdownMenuItem<String>
                      (
                        value: "1",
                        child: Center(
                          child: Text(""),
                        ),

                      )

                    ],
                   onChanged: )
                   
                ],
              )*/
                ),
          ],
        ),
      ),
    );
  }
}
