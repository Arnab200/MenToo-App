import 'package:flutter/material.dart';

import './newdashboard.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MenToo",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[new IconButton(icon: new Icon(Icons.search), onPressed: (){},)],
            title: new Row(
              children: <Widget>[
                new IconButton(icon: new Icon(Icons.menu), onPressed: (){},),
                Text('MenToo')
              ],
            ),
            backgroundColor: Colors.black.withOpacity(0.85) ),
        body: new Stack(
          children: <Widget>[
            TheGridView().build(),
          ],
        ),
      ),
    );
  }
}
