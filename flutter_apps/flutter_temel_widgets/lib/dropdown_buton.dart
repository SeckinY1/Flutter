import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _sehirDegeri = null;
  List<String> _sehirler = ["Mersin", "Sivas", "Anlara", "İstanbul", "Muğla"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir Seçiniz"),
        /*items: [
          DropdownMenuItem(
            child: Text("Mersin Şehri"),
            value: "Mersin",
          ),
          DropdownMenuItem(
            child: Text("Sivas Şehri"),
            value: "Sivas",
          ),
          DropdownMenuItem(
            child: Text("Ankara Şehri"),
            value: "Ankara",
          )
        ],*/
        items: _sehirler
            .map((String oAnkiSehir) => DropdownMenuItem(
                  child: Text(oAnkiSehir),
                  value: oAnkiSehir,
                ))
            .toList(),
        value: _sehirDegeri,
        onChanged: (String? deger) {
          setState(() {
            _sehirDegeri = deger;
          });
        },
      ),
    );
  }
}
