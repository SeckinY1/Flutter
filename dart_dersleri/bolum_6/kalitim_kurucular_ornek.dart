void main(List<String> args) {
  Kisi seckin = Calisan("Seçkin", 22, 0);
  Calisan sule = Calisan("Şule", 24, 6000);

  seckin.kendiniTanit();
  sule.kendiniTanit();

}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım $isim, yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age);

  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım da $maas");
  }
}
