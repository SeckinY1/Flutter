import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container containerOlustur(String text, Color renk, {double margin = 0}) {
    return Container(
        width: 75,
        height: 75,
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: margin),
        color: renk,
        child: Text(
          text,
          style: TextStyle(fontSize: 30),
        ));
  }

  Row dartRowOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.orange.shade100),
        containerOlustur("A", Colors.orange.shade200),
        containerOlustur("R", Colors.orange.shade400),
        containerOlustur("T", Colors.orange.shade600)
      ],
    );
  }

  Column dersleriColumn() {
    return Column(
      children: [
        Expanded(
            child: containerOlustur("E", Colors.orange.shade200, margin: 5)),
        Expanded(
            child: containerOlustur("R", Colors.orange.shade300, margin: 5)),
        Expanded(
            child: containerOlustur("S", Colors.orange.shade400, margin: 5)),
        Expanded(
            child: containerOlustur("L", Colors.orange.shade500, margin: 5)),
        Expanded(
            child: containerOlustur("E", Colors.orange.shade600, margin: 5)),
        Expanded(
            child: containerOlustur("R", Colors.orange.shade700, margin: 5)),
        Expanded(
            child: containerOlustur("İ", Colors.orange.shade800, margin: 5)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(backgroundColor: Colors.black, accentColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Dersleri"),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [dartRowOlustur(), Expanded(child: dersleriColumn())],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          child: Icon(
            Icons.plus_one_rounded,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
 /* Widget containerDersleri() {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.rectangle,
            border: Border.all(width: 10, color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: NetworkImage(img1), fit: BoxFit.scaleDown),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(10, 10), blurRadius: 5)
            ]),
      ),
    );
  }
}*/
