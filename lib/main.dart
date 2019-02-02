import 'package:mentoo/model/lesson.dart';
import 'package:flutter/material.dart';
import 'package:mentoo/details_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MenToo',
      theme: new ThemeData(
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0), fontFamily: 'Raleway'),
      home: new ListPage(title: 'MenToo'),
      // home: DetailPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(lesson.listicon, color: Colors.white),
          ),

          title: Text(
            lesson.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
         
         
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(lesson: lesson)));
          },
        );

    Card makeCard(Lesson lesson) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(lesson),
          ),
        );



    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );


    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      
    );
  }
}

List getLessons() {
  return [
    Lesson(
        title: "You Are Not Alone",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 20,
        listicon: Icons.chat,
        content:
            "This is the 'You Are Not Alone Page' where we provide help to others."),
    Lesson(
        title: "Counselling",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 50,
        listicon: Icons.group,
        content:
            "This is the Counselling Page. You can ask us questions and get advice."),
    Lesson(
        title: "No Voice Goes Unheard",
        level: "Intermidiate",
        indicatorValue: 0.66,
        price: 30,
        listicon: Icons.mic,
        content:
            "This is the no Voice goes Unheard page. Voice your concern anynomously."),
    Lesson(
        title: "File A Case",
        level: "Intermidiate",
        indicatorValue: 0.66,
        price: 30,
        listicon: Icons.business_center,
        content:
            "This is File A Case Page where all the complaints are filed. We can help you get legal help in this regard."),
    Lesson(
        title: "Know Your Rights",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        listicon: Icons.import_contacts,
        content:
            "You have the right to know your rights. Open the internet and check what the law can do for you"),
    Lesson(
        title: "Break The Shell",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        listicon: Icons.do_not_disturb,
        content:
            "Break the Shell page."),
    Lesson(
        title: "Helpline",
        level: "Call us and tell us about your story.",
        indicatorValue: 1.0,
        price: 50,
        listicon: Icons.phone,
        content:
            "This the Helpline Page.")
  ];
}


