import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AppDashboard extends StatefulWidget {
  @override
  _AppDashboardState createState() => _AppDashboardState();
}

class _AppDashboardState extends State<AppDashboard> {

  Material myItems(IconData icon, String heading, int color){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196f3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  //Text
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(heading,
                      style: TextStyle(
                        color: new Color(color),
                        fontSize: 25.0
                      ),
                      ),
                    ),

                  //Icons
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0
                      )
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MenToo", style: TextStyle(
          color: Colors.white
        ),)
      ),
    body: StaggeredGridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      children: <Widget>[
        myItems(Icons.graphic_eq, "Total Views", 0xffed622b),
      ],
      staggeredTiles: [
        StaggeredTile.extent(1, 130.0),
      ],
    ),
    );
  }
}