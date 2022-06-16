// Burada yapılan işlemde bir veri çekildiğini düşünelim ve ekrana bu verinin uzunluğunu yazdırmak istersek verinin gelmesini beklememiz lazım. 16. satırda bulunan fonksiyonda standart asenkron programlama işlemi yapılmıştır. Bu fonksiyon veri çekmektedir. Bu veri gelene kadar uzunluk yaptırma işlemini yazamayız ve yaptırmak istediğimiz işlemi main içerisinde yazarsak senkron programlama gibi bu işlem yapılana kadar kodun akışını durduracaktır. Bunun olmaması için awake komutunu kullanacağımız kısmı başka bir fonksiyon içerisinde yazarız. Bu sorun ortadan kalkmış olur.  awake komutunun kullanıldığı fonksiyonun yanına 10. satırda olduğu gibi async yazılır.

import 'dart:io';

void main(List<String> args) {
  print("Kişi verileri çekiliyor.");
  kisiIleIlgiliIslemler();
  print("İşlemler bitti");
}

void kisiIleIlgiliIslemler() async {
  String kisi = await kisiVerileri();
  print("Kişi verileri alındı.");
  print(kisi.length);
}

Future<String> kisiVerileri() {
  return Future<String>.delayed(Duration(seconds: 5), () {
    return "Kişi adı: Seçkin ve ID: 10";
  });
}
