/* 
SORU1: Parametre olarak bir tane int sayı alan fonksiyon yazunuz. Bu fonksiyon alduğı değere kadar olan çift sayıların toplamını geri döndürsün.

SORU2: Dire alanını hesaplayan fonksiyonu yazınız. pi sayısı opsiyonel olmalı. Eğer pi sayısı verilmezse varsayılan olarak 3,14 olarak hesaplama yapın.

SORU3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız. Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenari ikiz kenar, eş kenar olduğunu ekrana yazdırsın ve bir değer döndürmesin.
*/

void main(List<String> args) {
//CEVAP1:
  print("Çift satıların toplamı: ${ciftSayilar(6)}");

//CEVAP2:
  print("Daire Alanının Sonucu = ${daireAlaniHesapla(6)}");

//CEVAP3:
  ucgenSiniflandirma(kenar2: 3, kenar1: 4, kenar3: 5);
  ucgenSiniflandirma();//Kenar uzunlukları girilmediği için fonksiyonda belirtilen null değerleri kullanır.
}

//CEVAP1:

int ciftSayilar(int sayi) {
  int toplam = 0;
  for (int basla = 0; basla <= sayi; basla++) {
    if (basla % 2 == 0) {
      toplam = toplam + basla;
    }
  }
  return toplam;
}

//CEVAP2:
double daireAlaniHesapla(double cap, [double pi = 3.14]) {
  return (cap * cap * pi);
}

//CEVAP3:
void ucgenSiniflandirma({int kenar1 = 1, int kenar2 = 1, int kenar3 = 1}) {
  if(kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3){
    print("Kenar uzunlukları girilen üçgen türü: ÇEŞİTKENAR ÜÇGEN");
  }else if(kenar1 == kenar2 && kenar2 == kenar3){
    print("Kenar uzunlukları girilen üçgen türü: EŞKENAR ÜÇGEN");
  }else{
    print("Kenar uzunlukları girilen üçgen türü: İKİZKENAR ÜÇGEN");
  } 
}
