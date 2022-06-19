void main(List<String> args) {
  Matematik i1 = Matematik(10, 20);
  Matematik i2 = Matematik(25, 20);
  Matematik i3 = Matematik(40, 5);
  i1.toplam();
  i1.fark();
  i2.toplam();
  i2.fark();
  i3.toplam();
  i3.fark();

  Matematik.tanit();
  print(Matematik
      .PI); //Static anahtar kelimesi kullanılarak çağırılan özellikler sınıf adı ile çağırılır.
  print("Toplam işlem sayısı = ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  //Nesne özellikleri
  int sayi1;
  int sayi2;

  //Sınıf özellikleri
  static int toplamIslemSayisi = 0;
  static double PI = 3.14;
  static void tanit() {
    print("Ben matematik sınıfıyım");
  }

  Matematik(this.sayi1, this.sayi2);

  void toplam() {
    tanit();
    toplamIslemSayisi++;
    print("Toplam = ${sayi1 + sayi2}");
  }

  void fark() {
    toplamIslemSayisi++;
    print("Fark = ${sayi1 - sayi2}");
  }
}
