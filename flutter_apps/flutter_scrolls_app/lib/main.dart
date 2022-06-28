import 'package:flutter/material.dart';
import 'package:flutter_scrolls_app/card_listtile.dart';
import 'package:flutter_scrolls_app/custom_scroll_view.dart';
import 'package:flutter_scrolls_app/grid_view_kullanimi.dart';
import 'package:flutter_scrolls_app/listview_kullanimi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'ScrollApp', home: CustomScrollViewOrnegi());
  }
}
