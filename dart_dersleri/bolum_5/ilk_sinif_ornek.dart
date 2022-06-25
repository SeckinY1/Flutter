void main(List<String> args) {
  Ogrenci seckin = Ogrenci(); /* Oluşturulan sınıftaki metotları kullanmak için bir nesne oluşturmamız gerekir. Bu satırda nesne oluşturma işlemini  
                                 yapmış oluyoruz. */
  seckin.ogrAd = "Seçkin";
  seckin.ogrNo = 2017734012;
  seckin.ogrAktifMi = true;

  var sule = Ogrenci();
}

class Ogrenci {
  int? ogrNo;
  String? ogrAd;
  bool? ogrAktifMi;


  void dersCalis() {
    // Sınıflar içerisinde fonksiyonlar da tanımlanabilir.
    print("Öğrenci şuanda ders çalışıyor...");
  }
}
