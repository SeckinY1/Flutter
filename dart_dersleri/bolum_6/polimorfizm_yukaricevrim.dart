void main(List<String> args) {
  User user1 = User();
  User user2 = NormalUser();
  NormalUser user3 = NormalUser();  
  SadeceOkuyucuUser user5 = SadeceOkuyucuUser();
  AdminUser user4 = AdminUser();

  //Yukarıda bulunmakta olan sınıflar aslında her biri User tipindedir. Buna YUKARI ÇEVRİM denir. 3. satırdaki sınıf tanımı ile 4. satuırdaki tanım aynı anlamak gelmektedir. İkisi de User' in alt sınıfı olduğu için aslında tip olarak User' dırlar.

  List<User> kullaniciListesi = [];
  kullaniciListesi.add(user1);
  kullaniciListesi.add(user2);
  kullaniciListesi.add(user3);
  kullaniciListesi.add(user4);
  kullaniciListesi.add(user5);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
  test(user5);

}

void test(User kullanici) { //Bu metoda polimorfizm denir. Girilen her user değerine göre farklı çktı vermektedir.
  kullanici.girisYap();
}

class User {
  String email = "";
  String sifre = "";

  void girisYap() {
    print("Ana user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    // User de bulunan bir metodu override ettik yani bu sınıf için yeniden düzenledik.
    print("Normal user giriş yaptı");
  }
}

class SadeceOkuyucuUser extends NormalUser {
  void goreviniYaz() {
    print("Ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("Okuyucu user giriş yaptı");
  }

  @override
  void davetEt() {
    //NormalUser de bulunan bir metodu override ettik yani bu sınıf için yeniden düzenledik.
    print("Okuyucu arkadaşlarını davet etti");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam kullanıcı sayısı 20");
  }

  @override
  void girisYap() {
    print("Admin user giriş yaptı");
  }
}
