void main(List<String> args) {
  int sayi1 = 15;
  int sayi2 = 8;
  int kucukSayi1; 
  int kucukSayi2;
                  //Buradaki kucukSayi1 ve kucukSayi2 değişkenleri null   değerdir. Normalde Dart' ın burada hata vermesi gerekmektedir. Fakat aşağıda bulunan koşullu döngüler içerisinde zaten bir atama işlemi yapıldığı için Dart bunun farkındadır ve bu nedenle hata vernez.
  
  sayi1 < sayi2 ? kucukSayi1=sayi1 : kucukSayi1=sayi2;
  print("Küçük sayı: $kucukSayi1");

  print("*************");

  kucukSayi2 = sayi1 < sayi2 ? sayi1 : sayi2;
  print("Küçük sayı: $kucukSayi2");  //Burada bulunan kısa if döngüsü ile yukarıda bulunan döngü aynı işlevi görmektedir.

  print("*************");

  String? ad = null;
  String? soyAd = "Yekrek";
  String? mesaj;

  mesaj = ad ?? soyAd;  
  // ??: Bu operant ise ad değişkeni null ise soyAd değişkenini mesaj değikeni içine kaydet demektir. Null değer karşılaştırmak için kullanılır. 
  print("Merhaba $mesaj");
}