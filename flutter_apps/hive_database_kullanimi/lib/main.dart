import 'package:flutter/material.dart';
import 'package:hive_database_kullanimi/model/ogrenci.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter(
      "uygulama"); // Bu komut satırı ile hive initialized yapmamız gerekmekte.
  await Hive.openBox(
      "test"); // Bu komut satırı ile bir kutu oluşturulur. Eğer bu kutu varsa işlem üstünde yapılır, eğer yoksa text isminde yeni kutu oluşturulur. Birden fazla kutu oluşturmakta mümkün. Aynı zamanda veri tipini de belirtebiliriz.
  Hive.registerAdapter(OgrenciAdapter());
  Hive.registerAdapter(GozRengiAdapter());
  await Hive.openBox<Ogrenci>(
      "ogrenciler"); /* Aşağıda bulunan _customData fonksiyonu için oluşturulan box yapısını oluşturur. Bu box içerisinde Ogrenci sınıfından  
                                                elemanları tutar. */

  await Hive.openLazyBox<int>(
      "sayilar"); /* Veri tabanında çok fazla veri sakladığımızda ram ve işlemciyi yormamak için bu yapıyı kullanırız. Çunku openBox yapısı 
                                             uyguşama açıldığı anda verileri ram içine yazar ve çağırılmasını bekler. */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    var box = Hive.box(
        "test"); // Bu komut satırı ile  yukarıda oluşturulan test isimli box içine yazma işlemleri yapılır.
    await box
        .clear(); /* Bu komut ile aynı kodu birden fazla çalıştırdığımızda aynı satırları tekrar yazar. Aynı verileri sürekli yazmamak için box içindeki verileri  
                          silersek bu sorun ortadan kalkmış olur. Sildikten sonra bu verileri aşağıda tekrardan yazdırdığımız için hem verileri görmüş oluruz hem de aynı veriler birden fazla kere kayıt edilmemiş olur. Fakat bu işlem zaman alan bir işlem olduğu için await ile kullanmamız gerekir.*/

    /* Yazma işlemi de clear işlemi gibi uzun sürer fakat await kullanmadık. Çünkü bu işlme ram üzerine yazılarak yapılmaktadır. Büyüj uygulamalarda bu işlem işlemciyi yorar. Bu nedenle lazybox kullanılır. Bu konuya ileride değinilecektir. */
    box.add(
        "seckin"); /* Bu yapı ile test isimli box yapısına bir değer eklemiş oluruz. Bu değerler liste gibi tutulurlar. Fakat erişim iki farklı şekilde olur. 
                           index veya key - value ilişkisi ile erişilebilir. Örneğin "seckin" isimli String yapısının indexi 0' dır. Key değeri ise 0' dır. Value değeri ise seckin' dir. */
    box.add("yekrek"); // index = 1 ########## key = 1 ########## value = yekrek
    box.add(true);
    box.add(123); // index = 3 ########## key = 3 ########## value = 123

    // Yazmak için bir başka metot ise put metodudur. Fakat bu metot asenkron yani await kullanımı gerektiren bir metottur. Aynı zamanda Map yapısı gibi key - value ilişkisi ile çalışır.
    box.put("tc", "123456789");
    box.put("tema", "dark");

    // Aynı zamanda putAll ve addAll ile ekleme işlemleri yapılabilir. Bu yapılar ise tek seferde birden fazla yazdırma işlemi için kullanılır. Bu işlem de uzun sürebileceği için asenkrondur. addAll liste içerisinde, putAll map içerisinde saklanır.
    // box.addAll(["liste1", "liste2", false, 9523]);
    // box.putAll({"araba": "mercedes", "yıl": 2022});

    //Kutu içerisindeki değerleri yazdırmak için forEach yapısını kullanabiliriz. Fakat key kullanırsak yukarıda yazdığı gibi sadece bize indexleri verir. Value kullanırsak değerin kendisine erişmiş oluruz.
    /* box.values.forEach((element) {
      debugPrint(element
          .toString()); // Bu işlem ile konsola box içindeki değerler yazdırılabilir.
    }); */

    // forEach ile yazdırmak yerine bu yapılar map yapısına da dönüştürülebilir. Keyler index - valueler ise index karşılığı olarak gelir.
    debugPrint(box.toMap().toString());
    // Bu map yapısında değerleri almak için get yapısını kullanırız. Key değerini vererek o yedeki value değerine erişebiliriz. getAt ile de index vermemiz gerekir.
    debugPrint(box.get("tc"));
    debugPrint(box.getAt(4));
    debugPrint(box.get(0));
    debugPrint(box.getAt(0));

    // Bir veriyi silmek için delete metodu kullanılır. Bu işlem zaman alan bir yapı olduğı için await kullanmamız gerekir. Bu yapıda da delete key değeri, deleteAt ise value değeri ister.
    await box.delete("tema");
    await box.deleteAt(0);
    debugPrint(box.toMap().toString());

    // length metodu ile yapımızın uzunluğunu yazdırabiliriz.
    debugPrint(box.length.toString());

    // Bir değeri güncellemek için put yapısını kullanırız.
    await box.put(0, "yeni değer");
  }

  void _customData() async {
    var seckin = Ogrenci(10, "seckin", GozRengi.YESIL);
    var ilkan = Ogrenci(7, "ilkan", GozRengi.MAVI);
    var box = Hive.box<Ogrenci>(
        "ogrenciler"); // Bu yapıyı openBox yaparken oluşturduğumuz gibi oluşturmazsak hata alırız. Yani veri tipi de yazılmalıdır.
    await box.clear();
    box.add(seckin);
    box.add(ilkan);

    debugPrint(box.toMap().toString());
  }

  void _lazyBox() async {
    var sayilar = Hive.lazyBox<int>(
        "sayilar"); /* Yukarıda veri tipini belirttiğimiz için burda da yazdırmamız gerekir. Ve yapı lazyBox olduğu için çağırırken box olarak  
                                                   değil lazyBox olarak çağırmamız gerekir. */
    for (int i = 0; i < 50; i++) {
      await sayilar.add((i * 50));
    }

    // Sayıları yazdırmak için getAt metodunu kullamamız gerekir ve bunu for döngüsü ile yapabiliriz.
    for (int i = 0; i < 50; i++) {
      debugPrint((await sayilar.getAt(i)).toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _lazyBox,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
