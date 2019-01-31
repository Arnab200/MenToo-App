import 'package:flutter/material.dart';

class TheGridView{


  Card makeGridCell(String name, IconData icon){
    return Card(
      color: Colors.white.withOpacity(0.4),
      elevation: 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 30.0), child:Center(child: Icon(icon, size: 40.0))),
          Center(child: Text(name)),
        
        ],

      ) 
    );
  }

  GridView build(){
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
          makeGridCell("You are not alone", Icons.message),
          makeGridCell("Counselling", Icons.email),
          makeGridCell("Unheard", Icons.message),
          makeGridCell("Report", Icons.new_releases),
          makeGridCell("Know your rights", Icons.file_download),

          makeGridCell("Break the shell", Icons.settings),
          makeGridCell("Helpline", Icons.phone),
          makeGridCell("Home", Icons.alarm),
          makeGridCell("Home", Icons.message), 
          makeGridCell("Home", Icons.call),        
      ],
    );
  }
}