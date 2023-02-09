import 'dart:convert';

import 'package:flutter/material.dart';

import 'model/araba_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({Key? key}) : super(key: key);

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    arabalarJsonOku();
    return Scaffold(
      appBar: AppBar(title: const Text("Local Json İşlemleri")),
      body: FutureBuilder<List<Araba>>(
        /* Future kullanılan yapıları doğrudan çağırdığımızda hata alırız çünkü yapının gelmesi milisaniye bile olsa oluşturulan yapı null değer aldığı için 
                                          hata alırız. Bunun için FutureBuilder yapısı kullanılır. */
        future:
            arabalarJsonOku(), // Yukarıda FutureBuilder içinde buraya gelecek yapyı List<Araba> yapısı tanımladığımız için future da bu yapıya karşılık gelen değeri istemektedir.
        builder: (context, snapshot) {
          /* Bu yapı widget return eder. Oluşan yapılar builder a snapshot aracılığı ile iletilir. Bu yapı kullanıldığında data gelip gelmemesi durumuna karşı 
                                          önlem almak için if else ile kullanmak daha matıklıdır. */
          if (snapshot.hasData) {
            // snapshot datası varsa içerideki işlemleri yap.
            List<Araba> arabaListesi = snapshot
                .data!; //Snapshot içerisinde veri yoktur. Snapshot verilerine erişmek için data yapısı kullanılır.
            return ListView.builder(
                itemCount: arabaListesi.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text(arabaListesi[index].arabaAdi),
                    subtitle: Text(arabaListesi[index].ulke),
                    leading: CircleAvatar(
                        child: Text(
                      arabaListesi[index].model[0].fiyat.toString(),
                      style: const TextStyle(fontSize: 12),
                    )),
                  );
                }));
          } else if (snapshot.hasError) {
            //Snapshot içinde data yoksa içerideki işlemleri yap.
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const CircularProgressIndicator(); // Loading görüntüsü verir.
          }
        },
      ),
    );
  }

  Future<List<Araba>> arabalarJsonOku() async {
    // Await kullandığımız için ve yapıya veri tipi atadığımız için Future ile sarmalamamız gerekmekte.
    try {
      String okunanString = await DefaultAssetBundle.of(context).loadString(
          "assets/data/arabalar.json"); // Bu yapıda stringlerin yolunu bildirerek okunanString değişkeni içine yazdırmış olduk.
      var jsonObject = jsonDecode(okunanString);
      //debugPrint(okunanString);
      //debugPrint("*******************************");
      /*List arabaListesi = jsonObject;
    debugPrint(arabaListesi[1]["model"][0]["fiyat"].toString()); //Json yapısı içerisinde sadece string elemanlar olmadığı için yapıyı Stringe dönüştürdük.*/
      List<Araba> tumArabalar = (jsonObject
              as List) /* jsonObject' i map kullanarak Araba objesine dönüştürmemiz gerekiyor fakat bu yapı dynamic olduğu için map kullanamıyoruz. Bu nedenle as 
                        list yaptık*/
          .map((arabaMap) => Araba.fromMap(arabaMap))
          .toList(); /* Burada ise jsonObject yapısını Araba sınıfına dönüştüren bir map yapısı yazmış olduk. Bu yapı ile jsonObject içerisinde bulunan keyler ve valueler Araba sınıfı 
                    içerisindeki yapıya göre sınıflandırılacak. Ve bu yapı genel olarak liste yapıldığı için liste metotları ile çalışabilir hale gelmiş olucaz.*/
      debugPrint(tumArabalar[0].model[0].model);
      debugPrint(tumArabalar[0].kurulusYili.toString());

      return tumArabalar; // Veri tipini belirttiğimiz için istenilen yapıyı return etmemiz gerekir.
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e
          .toString()); // Hata varsa return ederek yukarıda bulunan snaphsot.hasError yapısına göndermiş oluruz.
    }
  }
}
