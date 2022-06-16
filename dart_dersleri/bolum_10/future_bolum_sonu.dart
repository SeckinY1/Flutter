/*  
*Bir fonksiyon yazın ve bu fonksiyon aldığı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye sonunda sonuçlanacaktır ve getirilen kişi bilgisi map olarak alınacaktır. Bu map yapısında username ve id bilgisi olması yeterlidir. 
  
*Getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir.

*Son olarak kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon yazın. Bu fonksiyon 1 saniye sürecektir.
*/
void main(List<String> args) async {
  idDegerineGoreKullanici(5).then((value) {
    print(value);
    kurslar(value["username"]).then((List kurslarinListesi) {
      print(kurslarinListesi);
      String ilkKurs = kurslarinListesi[0];
      yorum(ilkKurs).then((String yorum) => print(yorum));
    });
  });
}

Future<String> yorum(String yorum) {
  print("$yorum kursunun yorumu:");
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Mükemmle bir eğitim";
  });
}

Future<List<String>> kurslar(String kullanici) {
  print("$kullanici adlı kullanıcının kursları getiriliyor.");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["Flutter", "ROS", "C", "Python"];
  });
}

Future<Map<String, dynamic>> idDegerineGoreKullanici(int id) {
  print("ID değeri $id olan kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "seckin", "id": id};
  });
}
