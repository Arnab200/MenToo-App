import 'package:flutter/material.dart';
import './main.dart';

import './notalonepage.dart';

class TheGridView{

  Card makeGridCell(String name, IconData icon){
    return Card(
      color: Colors.transparent.withOpacity(0.4),
      elevation: 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 30.0), child:Center(child: Icon(icon, size: 40.0, color: Colors.white,))),
          Center(child: Text(name, style: TextStyle(color: Colors.white),)),
        
        ],

      ) 
    );
  }

  GridView build(context){
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        GestureDetector(
          onTap: (){
             Route notalonePage = MaterialPageRoute(builder: (context) => notAlonePage());
            Navigator.push(context, notalonePage);
          },
          child: makeGridCell("You are not alone", Icons.chat)),
          
          
          
          
          
          GestureDetector(
          onTap: (){
            print("You tapped on Counselling");
          },
          child: makeGridCell("Counselling", Icons.group)),
          GestureDetector(
          onTap: (){
            print("You Tapped on No Voice goes Unheard");
          },
          child: makeGridCell("No Voice Goes Unheard", Icons.mic)),
          GestureDetector(
          onTap: (){
            print("You Tapped on File A Case");
          },
          child: makeGridCell("File A Case", Icons.business_center)),
          GestureDetector(
          onTap: (){
            print("You Tapped on Know Your Rights");
          },
          child: makeGridCell("Know Your Rights", Icons.import_contacts)),
          GestureDetector(
          onTap: (){
            print("You Tapped on Break The Shell");
          },
          child: makeGridCell("Break The Shell", Icons.do_not_disturb)),
          GestureDetector(
          onTap: (){
            print("You Tapped on the Helpline");
          },
          child: makeGridCell("Helpline", Icons.call)),
          GestureDetector(
          onTap: (){
            print("You Tapped on the Helpline");
          },
          child: makeGridCell("Contact Us", Icons.headset_mic)
          ),
                
      ],
    );
  }
}