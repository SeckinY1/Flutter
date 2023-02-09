import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key})
      : super(
            key:
                key); // Başında bulunan const' u sildik. Çünkü aşağıda oluşturlan listeye elemanlar sonradan oluşturulup eklenecektir.

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(
          "Ad ${index + 1}",
          "Soyad ${index + 1}",
          index +
              1)); // Liste içerisindeki elemanlar birbirinden farklı olduğu için generate ile oluşturduk.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List View Kullanımı")),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            var oAnkiOgrenci = tumOgrenciler[index];
            return Card(
              color:
                  index % 2 == 0 ? Colors.red.shade100 : Colors.amber.shade100,
              child: ListTile(
                onTap: () {
                  print("İstenen elemana tıklandı, eleman id: $index");
                },
                title: Text(oAnkiOgrenci.ad),
                subtitle: Text(oAnkiOgrenci.soyad),
                leading: CircleAvatar(
                  child: Text(oAnkiOgrenci.id.toString()),
                ),
              ),
            );
          },
          itemCount: tumOgrenciler.length,
          separatorBuilder: (BuildContext context, int indext) {
            return Divider(
              thickness: 2,
              color: Colors.teal,
            );
          },
        ));
  }

  ListView klasikListView() {
    return ListView(
        children: tumOgrenciler
            .map((Ogrenci ogr) => ListTile(
                  title: Text(ogr.ad),
                  subtitle: Text(ogr.soyad),
                  leading: CircleAvatar(
                    child: Text(ogr.id.toString()),
                  ),
                ))
            .toList());
  }
}

class Ogrenci {
  final String ad;
  final String soyad;
  final int id;

  Ogrenci(this.ad, this.soyad, this.id);
}
