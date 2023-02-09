import 'dart:math';

import 'package:flutter/material.dart';

class DigerStatefulElemanlari extends StatefulWidget {
  const DigerStatefulElemanlari({Key? key}) : super(key: key);

  @override
  State<DigerStatefulElemanlari> createState() =>
      _DigerStatefulElemanlariState();
}

class _DigerStatefulElemanlariState extends State<DigerStatefulElemanlari> {
  bool checkBoxState = false;
  String? sehir;
  bool switchState = false;
  double sliderState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Diğer Input Elemanları"),
        ),
        body: Column(
          children: [
            CheckboxListTile(
              value: checkBoxState, //Ekranda görülecek değeri bize verir
              onChanged: (deger) {
                setState(() {
                  debugPrint(deger.toString());
                  checkBoxState = deger!;
                });
              },
              activeColor: Colors.orange,
              title: Text("CheckBox Title"),
              subtitle: Text("CheckBox Subtitle"),
              selected: false,
            ),
            RadioListTile<String>(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (secim) {
                setState(() {
                  sehir = secim;
                });
              },
              title: Text("Ankara"),
            ),
            RadioListTile<String>(
              value: "Mersin",
              groupValue: sehir,
              onChanged: (secim) {
                setState(() {
                  sehir = secim;
                });
              },
              title: Text("Mersin"),
            ),
            RadioListTile<String>(
              value: "İstanbul",
              groupValue: sehir,
              onChanged: (secim) {
                setState(() {
                  sehir = secim;
                });
              },
              title: Text("İstanbul"),
            ),
            RadioListTile<String>(
              value: "Sivas",
              groupValue: sehir,
              onChanged: (secim) {
                setState(
                  () {
                    sehir = secim;
                  },
                );
              },
              title: Text("Sivas"),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (secim) {
                setState(() {
                  switchState = secim;
                  debugPrint(switchState.toString());
                });
              },
              title: Text("SwitchListTile Title"),
              subtitle: Text("SwitchListTile Subtitle"),
            ),
            Slider(
              value: sliderState,
              onChanged: (slider) {
                setState(() {
                  sliderState = slider;
                });
              },
              min: 0, // Slider min değeri.
              max: 255, // Slider max değeri.
              divisions:
                  20, // Değer aralığını kaç parçaya bölmek istediğimizi belirtir.
              label: sliderState
                  .toString(), // Slider değiştikçe yukarıda değeri belirten bir başlık çıkar.
            )
          ],
        ));
  }
}
