void main(List<String> args) {
  Map<String, int> alanKodlari = {"istanbul": 212, "ankara": 312, "bursa": 224};
  print(alanKodlari);
  print(alanKodlari["istanbul"]); //Key değerini yazdırmak için alanKodlari Map' inde "istannbul" Key' ine bakıyoruz.

  print("******************************************");

  Map<String, dynamic> seckin = {
    "yas": 22,
    "soyad": "yekrek",
    "bekarMi": true
  }; //String, int ve boolean değerler aynı Map içinde olduğu için value değişken tipini "dynamic" olarak belirledik.

  print("Seçkin' in yaş değeri: ${seckin["yas"]}");
  print("Seçkin' in yaş, soyad ve medeni hal bilgisi : $seckin");

  print("******************************************");

  //Bir map içinde gezerken key ve value' ye göre değişken tipi belirlenir. Hangisini geziyorsak for içindeki değişkenin tipi ona göre yazılır.

  for (String oAnkiKey in seckin.keys) {
    // Key gezmek için
    print(oAnkiKey); //Key değerlerini ekrana yazdırır
    print("Key değerinin karşılığı : ${seckin[oAnkiKey]}"); // Key karşılığı yazdırır
  }

  print("******************************************");

  for (dynamic oAnkiDeger in seckin.values) {
    // Value gezmek için
    print(oAnkiDeger);
  }

  print("******************************************");

  for (var mapDegerleri in seckin.entries) {
    //Map içini tamamen gezmek için
    print("Key değeri: ${mapDegerleri.key} ve onun karşılığı: ${mapDegerleri.value}");
  }

  print("******************************************");

  // Bir map içinde istenilen elemanın var olup olmadığını srogulamak için;
  if (seckin.containsKey("soyad")) {
    print("Seçkin' in soyadı: ${seckin["soyad"]}");
  }

  // Boş bir map oluşturmak için iki yol kullanılır. Bunlar;

  Map<String, dynamic> bosMap1 = Map(); 
  Map<String, int> bosMap2 = {};
}
