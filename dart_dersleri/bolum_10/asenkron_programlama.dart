/* Asenkron kodlamada işlemler sırası ile değil isterlere göre yapılır. 4. satırda yazdırma işlemi yapılır. 5. satıra gelindiğinde fonksiyon içine girer, 11. satır yazdırılır ve 12. satıra gelindiğinde bekleme süresi kadar beklenir fakat kod akmaya devam eder. Main içinde bulunan 6 ve 7. satırlar yazdırılır. Süre bittikten sonra Future.delayed içerisinde bulunan 13. satırdaki komut gerçekleştirilir..*/

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar...");
  uzunSureliIslem();
  print("Sofra kuruluyor...");
  print("Kahvaltı hazır!");
}

void uzunSureliIslem() {
  print("Çocuk ekmek almak için evden çıktı");
  Future.delayed(Duration(seconds: 5), () {
    print("Çocuk ekmek ile eve geldi.");
  });
}
