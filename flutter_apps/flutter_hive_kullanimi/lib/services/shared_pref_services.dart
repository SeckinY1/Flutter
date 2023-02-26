import 'package:flutter_hive_kullanimi/model/my_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefServices {
  void verileriKaydet(UserInformation userInformation) async {
    final _name = userInformation.isim;
    final preferences = await SharedPreferences.getInstance();

    preferences.setString("isim", _name);
    preferences.setBool("ogrenci", userInformation.ogrenciMi);
    preferences.setInt("cinsiyet", userInformation.cinsiyet.index);
    preferences.setStringList(
        "renkler",
        userInformation
            .renkler); // Bu yapı sadece String değerler aldığı için yukarıda tanımlanan "secilen_renkler" listesinin veri tipi String olmalıdır.
  }

  Future<UserInformation> verileriOku() async {
    final preferences = await SharedPreferences.getInstance();
    var _isim = preferences.getString("isim") ?? "";
    var _ogrenci = preferences.getBool("ogrenci") ?? false;
    var _cinsiyet = Cinsiyet.values[preferences.getInt("cinsiyet") ?? 0];
    var _renkler = preferences.getStringList("renkler") ?? <String>[];

    return UserInformation(
        isim: _isim,
        cinsiyet: _cinsiyet,
        renkler: _renkler,
        ogrenciMi: _ogrenci);
  }
}
