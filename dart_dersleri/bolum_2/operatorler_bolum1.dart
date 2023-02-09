void main(List<String> args) {
  
  double sayi1 = 10.0;
  double sayi2 = 4.0;

  //ARİTMETİK OPERATÖRLER

  print("$sayi1 + $sayi2 işleminin sonucu ${sayi1+sayi2}' dir");

  print("$sayi1 - $sayi2 işleminin sonucu ${sayi1-sayi2}' dir");

  print("$sayi1 * $sayi2 işleminin sonucu ${sayi1*sayi2}' dir");
  
  print("$sayi1 / $sayi2 işleminin sonucu ${sayi1/sayi2}' dir");
  
  print("$sayi1 % $sayi2 işleminin sonucu ${sayi1%sayi2}' dir");

  //ATAMA VE KARŞILAŞTIRMA OPERATÖRLERİ
  
  double sayi3 = 5;
  
  sayi3 +=5;
  print(sayi3);
  
  sayi3 -=5;
  print(sayi3);

  sayi3 *=5;
  print(sayi3);

  sayi3 /=5;
  print(sayi3);

  sayi3 %=5;
  print(sayi3);

  //KARŞLAŞTIRMA OPERATÖRLERİ

  //<, >, <=, >=, ==, !=

  String isim = "Seckin";
  String soyisim = "Yekrek";

  if(isim != soyisim){
    print("İsim ile soyisim aynı değil");
  }else{
    print("İsim ile soyisim aynı.");
  }  

  //MANTIKSAL OPERATÖRLER

  bool kosul1 = true;
  bool kosul2 = false;

  print(kosul1 && kosul2);
  print(kosul1 || kosul2);
  print(!kosul1);
  print(kosul1 || !kosul2);

}