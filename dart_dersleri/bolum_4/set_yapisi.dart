void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("Seçkin");
  isimler.add("Şule");
  isimler.add("Beşiktaş");
  isimler.add("Seçkin");
  isimler.add("Faruk");

  bool sonuc = isimler.remove("Faruk"); /* Bu işlemde isimler setinde bulunan Faruk değişkeni silinip bir sonuç değişkenine atılır. Eğer bu değişken var ise sonuç true 
                                          değer döndürür ve değer set içerisinden silinir. */
  print("Sonuç: $sonuc");

  print("************************");
  for (String s1 in isimler) {
    print("İsimler: $s1");
  }
  print("************************");
  Set<int> numaralar = Set.from([1, 2, 5, 3, 7, 7, 8, 9, 7]);

  print(numaralar);

  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 10, 8, 6, 4, 2, 0];
  numaralar.addAll(ciftSayilar);

  print("Liste elemanları eklendikten sonra numaralar seti: $numaralar");
}
