import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: gridViewExtetOrnegi(),
    );
  }

  GridView gridViewExtetOrnegi() {
    return GridView.extent(
      maxCrossAxisExtent:
          200, // Yatayda bulunan elemanların genişliğinin max değerini belirtir..
      scrollDirection: Axis.horizontal, // Kaydırma eksenini değiştirir.
      crossAxisSpacing: 20, // Yataydaki elemanlar arası boşluğu belirler.
      mainAxisSpacing: 40, // Dikeydeki elemanlar arası boşluğu belirler.
      primary: true, //Kaydırma yaparken son elemana gelince çıkan bir ifadedir.
      padding: EdgeInsets.all(10),
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }

  GridView gridViewCountOrnegi() {
    return GridView.count(
      crossAxisCount: 2, // Yatayda kaç eleman tutlacağını belirtir.
      scrollDirection: Axis.horizontal, // Kaydırma eksenini değiştirir.
      crossAxisSpacing: 20, // Yataydaki elemanlar arası boşluğu belirler.
      mainAxisSpacing: 40, // Dikeydeki elemanlar arası boşluğu belirler.
      primary: true, //Kaydırma yaparken son elemana gelince çıkan bir ifadedir.
      padding: EdgeInsets.all(10),
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Mehaba Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
