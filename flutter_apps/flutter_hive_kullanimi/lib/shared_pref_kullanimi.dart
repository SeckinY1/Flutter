import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive_kullanimi/services/shared_pref_services.dart';

import 'model/my_model.dart';

class SharedPreferenceKullanimi extends StatefulWidget {
  const SharedPreferenceKullanimi({Key? key}) : super(key: key);

  @override
  State<SharedPreferenceKullanimi> createState() =>
      _SharedPreferenceKullanimiState();
}

class _SharedPreferenceKullanimiState extends State<SharedPreferenceKullanimi> {
  var secilen_cinsiyet = Cinsiyet.KADIN;
  var secilen_renkler = <String>[];
  var _ogrenciMi = false;
  TextEditingController _nameController =
      TextEditingController(); // Bu komut satırı ile bir text içindeki değerleri almaya yada kontrol etmemize olanak sağlar.
  var _preferenceServices = SharedPrefServices();

  @override
  void initState() {
    super.initState();
    _verileriOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preference Kullanımı")),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
                controller: _nameController,
                decoration:
                    const InputDecoration(labelText: "Adınızı Giriniz")),
          ),
          for (var item in Cinsiyet
              .values) // Bu kod yazımı ile Cinsiyet sınıfının metotlarına giderek onları gezer ve item içerisine kayıt eder. Bu şekilde tüm değerleri elle girmek zorunda kalmamış oluruz.
            _buildRadioListTile(describeEnum(item), item),
          for (var item in Renkler.values) _buildCheckBoxList(item),
          SwitchListTile(
              title: const Text("Öğrenci Misin?"),
              value: _ogrenciMi,
              onChanged: (bool ogrenciMi) {
                setState(() {
                  _ogrenciMi = ogrenciMi;
                });
              }),
          TextButton(
              onPressed: () {
                var _userInformation = UserInformation(
                    isim: _nameController.text,
                    cinsiyet: secilen_cinsiyet,
                    renkler: secilen_renkler,
                    ogrenciMi: _ogrenciMi);
                _preferenceServices.verileriKaydet(_userInformation);
              },
              child: const Text("Kaydet"))
        ],
      ),
    );
  }

  Widget _buildCheckBoxList(Renkler renk) {
    return CheckboxListTile(
        title: Text(describeEnum(renk)),
        value: secilen_renkler.contains(describeEnum(renk)),
        onChanged: (bool? deger) {
          if (deger == false) {
            secilen_renkler.remove(describeEnum(renk));
          } else {
            secilen_renkler.add(describeEnum(renk));
          }
          setState(() {});
          debugPrint(secilen_renkler.toString());
        });
  }

  Widget _buildRadioListTile(String title, Cinsiyet cinsiyet) {
    return RadioListTile(
        title: Text(title),
        value: cinsiyet,
        groupValue: secilen_cinsiyet,
        onChanged: (Cinsiyet? secilenCinsiyet) {
          setState(() {
            secilen_cinsiyet = secilenCinsiyet!;
          });
        });
  }

  void _verileriOku() async {
    var info = await _preferenceServices.verileriOku();
    _nameController.text = info.isim;
    secilen_cinsiyet = info.cinsiyet;
    secilen_renkler = info.renkler;
    _ogrenciMi = info.ogrenciMi;
    setState(
        () {}); /*Verileri oku yapısı init state içerisinde yazıldığında bir defa tetiklenir ve dosya kaynaktan çekilir.
                        Fakat build tetikleme sonrasında çalıştığı için bu yapılar ekrana yazdırılmaz. Bu nedenle set state etmemiz gerekmektedir.
                        Bu şekilde build gelse bile ekran yenilendiği için bizim kayıtlı olan verilerimiz ekrana yazdırılmış olur.*/
  }
}
