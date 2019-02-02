import 'package:flutter/material.dart';
import './notalonepage.dart';

import './newdashboard.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MenToo",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/someOtherRoute': (context) => notAlonePage(),
      },
      home: Scaffold(
        
        body: new Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage("assets/images/sunrise.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70.0),

              child:TheGridView().build(context)), // actual gridview goes here
            
            new Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: AppBar(
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child:Icon(Icons.search)),

                ],
                leading: Icon(Icons.menu),
                title: Text("MenToo"),
                
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


