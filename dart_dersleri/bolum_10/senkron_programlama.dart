/* Senkron kodlamada işlemler sırası ile yapılmaktadır. 6. satırda yazdırma işlemi yapılır. 7. satıra gelindiğinde fonksiyon içine girer, 13. satır yazdırılır ve 14. satıra gelindiğinde bekleme süresi kadar beklenir ve süre bittikten sonra kodun akışı devam eder.*/

import 'dart:io';

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar...");
  uzunSureliIslem();
  print("Sofra kuruluyor...");
  print("Kahvaltı hazır!");
}

void uzunSureliIslem() {
  print("Çocuk ekmek almak için evden çıktı");
  sleep(Duration(seconds: 5)); 
  print("Çocuk ekmek ile eve geldi.");
}
