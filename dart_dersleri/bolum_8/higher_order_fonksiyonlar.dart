void main(List<String> args) {
  List<int> listem = [1, 2, 3];
  listem.forEach((element) {
    // Listem içindeki değerler element içine kaydedilir. forEach' ın ilk kullanımı.
    print("Elements: $element");
  });

  print("************");

  List<int> listem2 = [4, 5, 6];
  listem2.forEach(callback); // forEach' in bir fonksiyon ile kullanımı.

  print("************");

  List<int> listem3 = [7, 8, 9];
  kendiForEachYapim(listem3, (int element, int index) {
    //Süslü parantez arası fonksiyon gövdesini tanımlar. Bu fonksiyon da isimsiz bir fonksiyondur.
    print("Liste elemanları: $element, Liste elemanlarının indexi: $index"); 
  });
}

void kendiForEachYapim(List<int> liste, Function callback) { /* forEach yapısını kendimiz oluşturduk. Bu fonksiyon parametre 
                                                                olarak int değerler tutan bir liste ve bir fonksiyon almaktadır. */
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}

void callback(int deger) {
  print("Değerler: $deger");
}
