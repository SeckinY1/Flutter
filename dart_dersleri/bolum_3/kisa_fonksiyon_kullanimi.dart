void main(List<String> args) {

  print("Çarpım sonucu: ${carpimiHesapla(5, 6)}");

  print("Kısa fonksiyon kullanımı ile çarpım sonucu: ${carpim(5, 6)}");
  
  print("Girilen sayılardan en büyüğü: ${maxDegerHesapla(10, 20)}");
  
  print("Girilen sayılardan en büyüğü (KISA FONKSİYON YÖNTEMİ İLE): ${maxBul(10, 20)}");
}

int carpimiHesapla(int s1, int s2) {
  return s1 * s2;
}

/*Tek satırlık bir kodumuzun olduğunu düşünelim. Bunun için fonksiyonların kısa kulanım yöntemleri vardır. 
  Aşağıda yazılan kod bloğundaki fonksiyon ile yukarıdaki fonksiyon aynı işlevi görmektedir. 
  Bu yöntem sadece tek satırlık bir kod yazarken kullanılır.*/

int carpim(int s1, int s2) => s1 * s2; //Aradaki ok ve eşittir ifadesine "FAT ARROW" yöntemi denir.

int maxDegerHesapla(int sayi1, int sayi2) {
  if (sayi1 < sayi2) {
    return sayi2;
  } else {
    return  sayi1;
  }
}

//maxDegerHesapla fonksiyonunu kısa fonksiyon şeklinde yazmak istersek;

int maxBul(int s1, int s2) => (s1 < s2) ? s2 : s1; // if-else kullanımının kısa yöntemi ile yapıldı.
