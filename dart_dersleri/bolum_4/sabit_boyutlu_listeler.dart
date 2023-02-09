void main(List<String> args) {
  //int tipinde bir liste örneği

  List<int> sayilar = List.filled(5, 10); //Listeyi tanımladık. 5, listenin eleman sayısını temsil ederken 10 sayısı default değeri temsil eder.
  sayilar[0] = 1; //Listenin 0. indeksine eleman atadık.
  sayilar[1] = 5; //Listenin 1. indeksine eleman atadık.
  sayilar[4] = 3; //Listenin 4. indeksine eleman atadık.

  print(sayilar.length); //Listenin uzunluğunu ekrana yazdırdık.
  print(sayilar[3]); //Listenin 3. indeksini ekrana yazdırdık.
  print(sayilar); //Listenin elemanlarını ekrana yazdırdık.

  //String tipinde bir liste örneği

  List<String> isimler = List.filled( 4, " "); //Buradaki default değeri boşluk metni olarak belirledik.
  isimler[0] = "Metin";
  isimler[2] = "Ali";
  isimler[3] = "Feyyaz";

  print(isimler);

  // Farklı veri tipleri barındıran liste örneği

  List<dynamic> karisikListe = List<dynamic>.filled(5, "değer girilmedi");
  karisikListe[1] = "Seçkin";
  karisikListe[3] = 10;
  karisikListe[4] = "Mersin";

  print(karisikListe);

  //Listenin içide gezmek

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }

  print("************");

  //Diğer bir yöntem olarak

  for (int anlikDeger in sayilar) {
    print(anlikDeger);
  }
}
