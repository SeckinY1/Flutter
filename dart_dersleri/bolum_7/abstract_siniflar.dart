void main(List<String> args) {
  Sekil s1 = Kare(3);
  Sekil s2 = Dikdortgen(5, 2);

  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  islemler(s1);
  islemler(s2);
}

void islemler(Sekil listem) {
  print(listem.alanHesapla());
  print(listem.cevreHesapla());
  listem.kendiniTanit();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();

  void kendiniTanit() {
    print("Ben Şekil sınıfındanım.");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return 4 * kenar.toDouble();
  }

  @override
  void kendiniTanit() {
    print("Ben Kare sınıfındanım.");
  }
}

class Dikdortgen extends Sekil {
  int en;
  int boy;

  Dikdortgen(this.en, this.boy);

  @override
  double alanHesapla() {
    return en * boy.toDouble();
  }

  @override
  double cevreHesapla() {
    return (en + boy) * 2;
  }

  @override
  void kendiniTanit() {
    print("Ben Dikdörtgen sınıfındanım.");
  }
}
