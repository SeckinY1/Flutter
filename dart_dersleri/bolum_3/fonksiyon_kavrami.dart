void main(List<String> args) {
  
  cevreHesapla();

  int alan = alanHesapla(5, 10);
  print("Alan: $alan");

  int hacim = hacimHesapla(5, 10, 10);
  print("Hacim: $hacim");

  String flutter = flutterOgreniyorum();
  print(flutter);
}

//Parametresiz fonksiyon
void cevreHesapla() {
  int en = 5, boy = 10;
  print("Çevre: ${(en + boy) * 2}");
}

//Parametre alan fonksiyon
int alanHesapla(int sayi1, int sayi2) {
  return sayi1 * sayi2;
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

//Değer döndüren String fonksiyon
String flutterOgreniyorum() {
  return "Flutter Öğreniyorum";
}
