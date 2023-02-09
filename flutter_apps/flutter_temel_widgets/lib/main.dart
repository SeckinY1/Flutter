import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/dropdown_buton.dart';
import 'package:flutter_temel_widgets/image_widgets.dart';
import 'package:flutter_temel_widgets/sayac_ornegi.dart';
import 'package:flutter_temel_widgets/temel_buton_turleri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("İmage Örnekleri"),
        ),
        body: DropDownButtonKullanimi(),
      ),
    );
  }
}
