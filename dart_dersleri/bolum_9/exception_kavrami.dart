void main(List<String> args) {
  print("Program başladı...");

  try {
    int sayi = 100 ~/
        0; //~ işareti double değer döndüren yerlerde sadece int kısmı almamızı sağlar.
  } on IntegerDivisionByZeroException {
    // Alınacak hata tahmin edilebiliyorsa hata türü girilerek kendi çıktımızı ekrana yazdırabiliriz.
    print("Payda sıfır olamaz");
  } catch (e) {
    print(e);
  } finally {
    print("Kod hata verse de vermese de bu kısım her şekilde çalışır.");
  }

  try {
    int sayi2 = 100 ~/ int.parse("seckin");
  } on FormatException catch (e) { /* Alınacak hata tahmin edilebiliyorsa hata türü girilir ve hata türünü otomatik olarak yazdırmak istersek catch fonksiyonu ile hatayı ekrana 
                                      yazdırabiliriz. */
    print(e.message); //Hata çıktısı ekrana yazdırılır.
    print(e.source); // Hatanın kaynağı ekrana yazdırılır.
  }

  print("Program sonlandırıldı");
}
