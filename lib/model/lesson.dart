import 'package:flutter/material.dart';

class Lesson {
  String title;
  String level;
  double indicatorValue;
  int price;
  IconData listicon;
  String content;

  Lesson(
      {this.title, this.level, this.indicatorValue, this.price, this.listicon, this.content});
}
