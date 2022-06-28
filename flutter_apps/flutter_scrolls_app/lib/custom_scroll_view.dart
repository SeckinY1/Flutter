import 'package:flutter/material.dart';

class CustomScrollViewOrnegi extends StatelessWidget {
  const CustomScrollViewOrnegi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver App Bar"), // App bar başlığını alta indirir.
              centerTitle: true, //App bar başlığını ortalar
            ),
            backgroundColor: Colors.red,
            expandedHeight: 200, // App bar yüksekliğini belirler.
            pinned:
                true, //App bar kapansa bile başlık ile app bar ın yukarıda görünmesini sağlar
            floating:
                true, /* App bar altına bir liste geldiğinde ve ekran kayan ekran görünümünü aldığında 
                        app barın açılıp kapanma anında kaybolmasını sağlar. Eğer bu değer true olursa yukarı kaydırma başladığı anda app bar açılır.
                        Eğer false ise app bar kısmına gelene kadar app bar açılmaz. */
          ),
          SliverList(delegate: SliverChildListDelegate(sabitListeElemanlari))
        ],
      ),
    );
  }

  List<Widget> get sabitListeElemanlari {
    return [
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanaları 1",
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanaları 1",
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanaları 1",
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanaları 1",
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
        color: Colors.indigo,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanaları 1",
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanaları 1",
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
        color: Colors.grey,
        alignment: Alignment.center,
      )
    ];
  }
}
