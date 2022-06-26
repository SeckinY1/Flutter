import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve List Tile'),
      ),
      body: Center(
          child: ListView(
        children: [
          Column(
            children: [
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
            ],
          ),
          Text(
            "Merhaba Dünya",
            style: TextStyle(fontSize: 20),
          ),
          TextButton(onPressed: () {}, child: Icon(Icons.add_a_photo))
        ],
      )),
    );
  }

  SingleChildScrollView singleScroll() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(children: [
      Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.red,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: CircleAvatar(
                child: Icon(Icons.add)), // Listenin başına eleman ekler
            title: Text("Ana başlık"), // Ana başlık
            subtitle: Text("Alt başlık"), // Alt başlık
            trailing: Icon(
                Icons.real_estate_agent), // Listenin en sağına eleman ekler
          )),
      Divider(
        color: Colors.red,
        height: 50, //Divider' in yukarısındaki eleman ile mesafesini belirler
        indent: 30, // Divider' in sol taraftan boşluğu
        endIndent: 30, // Divider' in sağ taraftan boşluğu
      )
    ]);
  }
}
