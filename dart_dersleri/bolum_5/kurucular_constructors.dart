void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  honda.bilgileriYaz();
  honda.aracinYasi();
  
  Araba reno = Araba(2005, "Reno", false);
  reno.bilgileriYaz();
  reno.aracinYasi();

  var bmw = Araba(2022, "BMW", true);
  bmw.bilgileriYaz();
  bmw.aracinYasi();

  Araba mercedes = Araba.yilsizKurucuMetot(true, "Mercedes");
  mercedes.bilgileriYaz();
  mercedes.aracinYasi();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  /*Araba(int modelYili, String marka, bool otomatikMi) {  Bu kurucu metodun yorum satırı yapılma sebebi bir sınıf içerisinde sadece bir kurucu metot bulunabilir.
    print("Kurucu metot tetiklendi...");
  } */

  /*Araba(int modelYili, String marka, bool otomatikMi) { //Sınıf elemanları ile kurucu parametreleri aynı ada sahip olursa this metodu kullanılmalı ve krucu parametreleri ile sınıf elemanları arasındaki ayrım this metodu ile yapılmalıdır.
    print("Kurucu metot tetiklendi...");
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  } */

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    // Bu kurucu metot ile yukarıdaki metot aynı görevi yapmaktadır.
    print("Kurucu metot tetiklendi...");
  }

  Araba.yilsizKurucuMetot(this.otomatikMi, this.marka);

  void bilgileriYaz() {
    print(
        "Aracın markası: ${marka}, Üretim yılı: ${modelYili}, Şanzıman bilgisi: ${otomatikMi}");
  }

  void aracinYasi() {
    if (modelYili != null)
      print("Aracın yaşı: ${2022 - modelYili!}");
    else
      print("Model yılı bulunamadığı için yaş hesabı yapılamadı");
  }
}
