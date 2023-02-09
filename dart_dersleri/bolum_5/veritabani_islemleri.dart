// Bu kütüphane getter_setter_public.dart kütüphanesi içinde çalışmaktadır.
import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "seckin"; //Kullanici adının görünmesini istemeyiz ki bilen kişi dışında kimse bu hesaba erişemesin. Bu nedenle public  yapılır.
  String _sifre = "123456"; //Şifrenin görünmesini istemeyiz ki bilen kişi dışında kimse bu hesaba erişemesin. Bu nedenle public  yapılır.

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "seckin" && _sifre == "123456") {
        return true;
      } else
        return false;
    } else
      return false;
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
