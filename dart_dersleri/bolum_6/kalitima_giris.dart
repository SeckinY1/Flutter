void main(List<String> args) {
  User user1 = User();
  user1.girisYap();

  NormalUser normal1 = NormalUser();
  normal1.girisYap();
  normal1.davetEt();

  SadeceOkuyucuUser okuyan1 = SadeceOkuyucuUser();
  okuyan1.girisYap();
  okuyan1.goreviniYaz();
  okuyan1.davetEt();

  AdminUser admin1 = AdminUser();
  admin1.girisYap();
  admin1.toplamKullaniciSayisiniGoster();
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
  void girisYap() { // User de bulunan bir metodu override ettik yani bu sınıf için yeniden düzenledik.
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
  void davetEt() { //NormalUser de bulunan bir metodu override ettik yani bu sınıf için yeniden düzenledik.
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
