import 'package:flutter/material.dart';


class notAlonePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("You Are Not Alone"),
      ),
      body: Center(
        child:Text(
          "This the you are not alone Page here you can interact with other people and share your experience with them"
        )
      ),
    );
  }
}