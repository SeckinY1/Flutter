// Bu kütüphane getter_setter_public.dart kütüphanesi içinde çalışmaktadır.

class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  void set musteriNoAta(int no) {
    // Aşağıdaki fonksiyon ile aynı görevi görmektedir.
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  String get musteriNoSoyle { // Aşağıdaki fonksiyon ile aynı görevi görmektedir.
    return "Muşteri numarası $_musteriNo";
  }

  void bilgileriYaz() {
    print("Müşteri numarası $_musteriNo");
  }
}
