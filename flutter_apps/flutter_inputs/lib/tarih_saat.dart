import 'package:flutter/material.dart';

class TarihSaatOrnegi extends StatefulWidget {
  TarihSaatOrnegi({Key? key}) : super(key: key);

  @override
  State<TarihSaatOrnegi> createState() => _TarihSaatOrnegiState();
}

class _TarihSaatOrnegiState extends State<TarihSaatOrnegi> {
  @override
  Widget build(BuildContext context) {
    DateTime suan = DateTime.now();
    DateTime yirmiGunSonrasi = DateTime(2022, 10, suan.day + 20);

    TimeOfDay suankiSaat = TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: suan,
                          firstDate: suan,
                          lastDate: yirmiGunSonrasi)
                      .then((secilenTarih) {
                    print(secilenTarih);
                    print(secilenTarih?.day);
                    print(secilenTarih?.millisecond);
                  });
                },
                child: Text("Tarih Seçiniz")),
            ElevatedButton(
                onPressed: () {
                  showTimePicker(context: context, initialTime: suankiSaat)
                      .then((suankiSaat) {
                    print(suankiSaat);
                  });
                },
                child: Text("Saat Seçiniz "))
          ],
        ),
      ),
    );
  }
}
