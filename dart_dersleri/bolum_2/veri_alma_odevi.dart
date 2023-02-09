import 'dart:io';

void main(List<String> args) {
  
  //ÖRNEK 1: İki notu girilen öğrencinin ortalamsını bularak sonucu ekranda gösteren algoritmayı yapın.

  print("Öğrencinin 1. notunu giriniz:");
  int not1 = int.parse(stdin.readLineSync()!);

  print("Öğrencinin 2. notunu giriniz:");
  int not2 = int.parse(stdin.readLineSync()!);

  double ortalama;

  ortalama = (not1.toDouble() + not2.toDouble())/2;
  print("Öğrencinin ortalaması: $ortalama");

  //ÖRNEK 2: Fiyatı girilen ürüne %18 KDV ekleyerek son fiyatı hesaplayan algoritmayı yazınız.
  print("***************************************");

  print("Ürünün fiyatını giriniz:");
  int urunFiyati = int.parse(stdin.readLineSync()!);

  double kdvFiyat;

  kdvFiyat = urunFiyati * 0.18 + urunFiyati;
  
  print("Ürünün yeni fiyatı: $kdvFiyat");

}