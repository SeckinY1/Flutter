// SORU 1: Şehirleri tutan bir liste oluşturun, 4 tane il ekleyip sırası ile ekrana yazdırın.
// SORU 2: Keyleri string, değerleri dynamic olan bir map oluşturun. Bu map yapısını bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın.
/* SORU 3: Her bir elemanında keyleri string, valueleri dynamic map olan bir liste oluşturun. Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun. Sonra da bu listeyi okunaklı bir şekilde yazdırın.
          Örnegin listenin 1. elemanında bulunan il ankara, plaka kodu 06, ilçe sayısı 10 (değerler rastgele olabilir.)*/
/* SORU 4: 5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50 arası rastgele şekilde oluşturulsun. Bu elemanları tek bir listeye aktarın ve oluşan son listeyi tutan bir set yapısına aktarın. Ve ekrama yazdırın. Bulunan 
          yeni setin karesini ekrana yazdırın.*/
// SORU 5: Kullanıcından aldığınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //CEVAP 1:

  List<String> sehirler = List.filled(4, "");
  sehirler[0] = "Mersin";
  sehirler[1] = "Ankara";
  sehirler[2] = "İstanbul";
  sehirler[3] = "Bodrum";

  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }
  print("********************************************************");

  //CEVAP 2:

  Map<String, dynamic> pcOzellikleri = {
    "işlemci çekirdek sayısı": 8,
    "ram miktarı": 16,
    "ssd var mı": true
  };
  print("Bilgisayar Özellikleri");

  for (var pc_degerleri in pcOzellikleri.entries) {
    print("${pc_degerleri.key} : ${pc_degerleri.value}");
  }

  print("********************************************************");

  //CEVAP 3:

  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[
    {
      "il_adi": "ankara",
      "ilce_sayisi": 6,
      "plaka_kodu": 06,
    },
    {
      "il_adi": "istanbul",
      "ilce_sayisi": 16,
      "plaka_kodu": 34,
    },
    {
      "il_adi": "bursa",
      "ilce_sayisi": 10,
      "plaka_kodu": 16,
    }
  ]; //Bir listenin içinde bir map tanımlanabilir. Fakat buna eleman ekleme için eklenecek yapının da map olması gerekmektedir.

  for (int i = 0; i < iller.length; i++) {
    print("${i + 1}. şehir bilgileri: ${iller[i]}");
  }
  print("********************************************************");

  //CEVAP 4:

  List<int> sayilar1 = List.filled(5, 0);
  List<int> sayilar2 = List.filled(5, 0);
  for (int i = 0; i < 5; i++) {
    sayilar1[i] = Random().nextInt(50); // Random sayılar oluşturmak için kullanılan yapıdır.
    sayilar2[i] = Random().nextInt(50);
  }

  print(sayilar1);
  print(sayilar2);

  Set<int> birlesikSet = {...sayilar1, ...sayilar2};
  Set<int> kareSet = {};

  print(birlesikSet);

  for (int i in birlesikSet) {
    kareSet.add(i * i);
  }
  print(kareSet);

  print("********************************************************");

  //CEVAP 5:
  List<int> veriler = <int>[];
  int not = 0;
  int ortalama = 0;
  do {
    print("Bir not giriniz (Çıkmak için -1 kullanınız):");
    not = int.parse(stdin.readLineSync()!);
    if (not != -1) {
      veriler.add(not);
    }
  } while (not != -1);

  print(veriler);

  for (int i = 0; i < veriler.length; i++) {
    ortalama = ortalama + veriler[i];
  }
  print("Ortalama: ${(ortalama / (veriler.length)).toDouble()}");
}
