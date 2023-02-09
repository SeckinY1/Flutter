//Bu kısımda bazı kısaltma ve notlar bulunmaktadı

void main(List<String> args) {
  var listem = <String>[]; /* Bu gösterim şekli ile bir liste oluşturduk. "[]"' den önce veri tipi belirtmek
                              zorunda değiliz fakat belirtmemizde fayda var. Belirtmez isek liste "dynamic" tipinde
                              bir liste olur ve sadece String yada sadece int tipinde değişkenker saklarken
                              hata yapabiliriz.*/

  var hataliSet ={}; /* Setler ve Mapler "{}" ile gösterilirler. Fakat bu şekilde bir Map tanımlamış oluruz. 
                        Eğer içine key-value ilişkisi içermeyen bir değer girersek yada başına veri tipini girersek o zaman dart bunun bir Set yapısı olduğunu algılar
                        Çünkü Map yapıları iki veri tipi barındırırlar.*/

  var setim = {"deger" "deger2"}; // Doğru Set tanımlama şeklidir. "{}"' in başına değişken tipi de tanımlanabilir.
  var mapim = {"yas": 22}; // İçi dolu bir map belirleme şeklidir.

  //İki farklı listemiz olsun ve bu listeleri bir liste altında birleştimemiz gerekiyor. addAll komutu ile bunu yapabiliriz fakat "spreads yöntemi" daha kolaydır. Eklenecel listenin başına ... konulur.
  var ciftSayilar = [0, 2, 4, 6, 8];
  var tekSayilar = [1, 3, 5, 7, 9];

  var sonListe = [...ciftSayilar, ...tekSayilar];
  print(sonListe);

  //Sprads Yöntemi Map ve Set için de kullanılır.
  var map1 = {"ad": "seçkin"};
  var map2 = {"yas": 22};

  var ikiMap = {...map1, ...map2};
  print(ikiMap);

  var set1 = {"seçkin"};
  var set2 = {"şule"};
  var set3 = {"Beşiktaş"};
  var set4 = {"şule"};

  var toplamSet = {...set1, ...set2, ...set3, ...set4};
  print(toplamSet); // Ekran çıktısında 3 eleman görülür çünkü set yapısında her elemena bir kere yazdırılır.
}
