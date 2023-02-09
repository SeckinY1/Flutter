//Main içinde future metotlarını kullanmak için bu fonksiyon içerisinde return işlemine ihtiyaç duyarız. Future String değer döndürme olasılı olan bir sınıftır. Oluşturulan fonksiyonun değişken tipi Future olmaludır. 13. satırda bu işlem yapılmıştır. 15. satırda return edilme sebebi fonksiyonun değer döndüren bir fonksiyon olmasıdır. 16. satırdaki return Duration sınıfının return' üdür. 
//Main içerisinde then kullanılarak 16. satırda bulunan return işlemi yazdırılır. Hata alınması durumunda 7. satırda bulunan catch komutu çalışacaktır. Exceptionlarda bulunan finally komutu gibi çalışan whenComplete komutu da 8. satırda yer almaktadır.
void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar...");
  uzunSureliIslem()
      .then((value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("Ekmek alma işlemi tamamlandı."));
  print("Sofra kuruluyor...");
  print("Kahvaltı hazır!");
}

Future<String> uzunSureliIslem() {
  print("Çocuk ekmek almak için evden çıktı");
  return Future<String>.delayed(Duration(seconds: 5), () {
    return "Çocuk ekmek ile eve geldi.";
  });
}
