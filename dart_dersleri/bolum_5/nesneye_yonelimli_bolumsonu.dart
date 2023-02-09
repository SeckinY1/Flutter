/* Soru1: CemberDaire adında sıınf oluşturun. Bu sınıfın yarıçap alan kurucusu olmalı. Ayrıca çevre ve yarıçap hesaplayan metotlar olmalı. (Pİ sayısı 3.14 alın) */

/* Soru2: Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin id ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerilerini rastgele oluşturarak bu öğrencileri saklayın ve öğrencileri yazdıran metodu yazın. Ogrencilerin not ortalamsını hesaplayan bir fonksiyon yazınız. */

import 'dart:math';

import 'cevap1.dart';
import 'cevap2.dart';

void main(List<String> args) {
  //Cevap 1:
  CemberDaire hesap = CemberDaire(4);
  print("Yarıçapı verilen dairenin çevresi: ${hesap.cevreHesapla()}");
  print("Yarıçapı verilen dairenin alanı: ${hesap.alanHesapla()}");

  //Cevap 2:
  Ogrenci ogr1 = Ogrenci(id: 5, not: 10);
  List<Ogrenci> ogrenciListesi = List.filled(100, Ogrenci());
  ogrenciOlustur(ogrenciListesi);

  for (Ogrenci oAnkiOgrenci in ogrenciListesi) {
    print(oAnkiOgrenci);
  }

  print("Öğrencilerin ortalaması: ${notOrtalamasi(ogrenciListesi)}");
}

void ogrenciOlustur(List<Ogrenci> olustur) {
  for (int i = 0; i < olustur.length; i++) {
    olustur[i] = Ogrenci(id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}

double notOrtalamasi(List<Ogrenci> not) {
  int toplam = 0;

  for (Ogrenci oAnkiNot in not) {
    toplam = toplam + oAnkiNot.not;
  }

  return toplam / not.length;
}
