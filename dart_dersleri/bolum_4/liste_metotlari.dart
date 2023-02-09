void main(List<String> args) {
  List<int> sayilar = [1, 8];

  if (!sayilar.isEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  } else {
    print("Bu liste boş mu:" + sayilar.isEmpty.toString());
  }
  sayilar.clear(); // Diziyi temizler ve boş bir dizi haline getirir.
  print(sayilar.length);

  print("********************");

  List<int> sayilar2 = [];
  if (sayilar2.isNotEmpty) {
    //Yukarıdaki if bloğu ile aynı görevi görür.
    print(sayilar2.first);
    print(sayilar2.last);
  } else {
    print("Bu liste boş mu:" + sayilar2.isEmpty.toString());
  }
  print("********************");

  List<int> sayilar3 = [2, 5, 9, 77, 17, 16];
  print("Eleman sayısı: ${sayilar3.length}");
  print("Dizinin tersten yazılışı: ${sayilar3.reversed}"); // Bu işlem sadece anlık yapılır ve dizi üztünde bir değişiklik olmaz.
  print(sayilar3);
  sayilar3.remove(9); // İlk gördüğü 9' u siler.
  print(sayilar3);
  sayilar3.removeAt(2); // 2. index' i siler.
  print(sayilar3);

  print(sayilar3.contains(9)); // Parantez içine girilen değer liste içinde var mı yok mu onu sorgular.

  print(sayilar3.elementAt(3)); // 3. index' te bulunan elemanı ekrana yazdırır.
  print(sayilar3.indexOf(16)); // 16 değerinin hangi index' te olduğunu ekrana yazdırır.

  sayilar3.shuffle(); // Sayilar listesindeki elemanların yerini rastgele değiştirir.
  print(sayilar3);
}
