import 'package:flutter/material.dart';
import 'package:flutter_app/pages/TabBar.dart' as prefix0;

class TableDemo extends StatefulWidget {
  @override
  _TableDemoState createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Demo"),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: <Widget>[
          Center(
              child: Text("Empoyee Data",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          DataTable(columns: [
            DataColumn(label: Text("Emp. Id")),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text("Mobile No")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text('111')),
              DataCell(Text('Shraddha')),
              DataCell(Text('8976758657'))
            ]),
            DataRow(cells: [
              DataCell(Text("123")),
              DataCell(Text('Priya')),
              DataCell(Text("8767564325"))
            ]),
            DataRow(cells: [
              DataCell(Text('324')),
              DataCell(Text('Komal')),
              DataCell(Text('78563451567'))
            ])
          ]),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.account_box,
                        size: 50,
                      ),
                      Text("Setting")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.lightbulb_outline,
                        size: 50,
                      ),
                      Text("Ideas")
                    ],
                  )
                ]),
                TableRow(children: [
                  Icon(Icons.voice_chat, size: 50),
                  Icon(Icons.add_location, size: 50)
                ])
              ],
            ),
          ),
          SizedBox(width: 5),
          RaisedButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => prefix0.TabBarV()));
              },
              child: Text("Tab Bar")),
        ],
      ),
    );
  }
}
