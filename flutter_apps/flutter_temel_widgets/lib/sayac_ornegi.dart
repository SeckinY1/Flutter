import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp' s AppBar"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Butona Basılma Miktarı",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            _sayac.toString(),
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayacArttir() {
    setState(() {
      _sayac++; // Bu ifadenin nereye yazıldığının bir önemi yok fakat genelde setState içine yazılır.
    });
  }
}
