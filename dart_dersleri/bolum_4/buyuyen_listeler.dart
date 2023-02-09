void main(List<String> args) {
  //Büyüyen listelerin gösterim şekli 1:
  List<int?> sayilar = [];
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(4);
  sayilar.add(5);

  print(sayilar.length);
  print(sayilar);

  sayilar.length =10; /*Önceki satırlarda değer gelidkçe sayı yazdı fakat şu anda yaptığımız işlem de dizinin uzunluğunu 100 olarak belirledik. 1' den 5' e kadar       
                      sayıları yazdıktan sonra dizinin uzunluğu 10 olarak belirlendiği için geriye kalan değerler null olabileceği için "null safety" hatası alınır. Bu nedenle "int" yanına "?" konulur. Ve bizim verdiğimiz değerlerden sonra gelen değerler "null" olarak ekrana yazdırılır. */
  print(sayilar);
  print("******************");

  //Büyüyen listeleri gösterme şekli 2:
  List<int> sayilar2 = [6, 7, 8];
  sayilar2.add(10);
  print(sayilar2);
  print("******************");

  //Büyüyen listelerin gösterim şekli 3:
  List<int> sayilar3 = List.filled(10, 10, growable: true);
  sayilar3[0] = 11; /* Bu komut diğer büyüyen listeler türünde kullanılamaz. Çünkü burada sabit liste yapısını kullandık fakat büyümesine izin verdik. Diğer kullanım   
                      şekillerinde liselerin belli bir elemanı olmadığı için indeksine girip değer verilemez. */

  sayilar3.add(21); /* Yukarıda liste oluştururken 10 
                      elemanlı olarak sınırlandırdık fakat growable değeri true olduğu için listenin büyümesine izin vermiş olduk. Bu satırda da yeni bir eleman ekliyerek listeyi genişletip 11 elemanlı hale getirdik. */
  print(sayilar3);
  print(sayilar3.length);
  print("******************");
  //Büyük listelerin gösterim şekli 4:
  List<int> sayilar4 = List.empty(growable: true);
  sayilar4.add(17);
  sayilar4.add(11);
  print(sayilar4);
  print(sayilar4.length);
}
