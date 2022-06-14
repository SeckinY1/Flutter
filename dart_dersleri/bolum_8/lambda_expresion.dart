void main(List<String> args) {
  Function f1 = () {
    print("Parametresiz fonksiyon denemesi");
  };

  var f2 = (int sayi) {
    return sayi * 2;
  };

  Function f3 = (int sayi2) => sayi2 * 2; /* Fat arrow yöntemi kullanarak return ve {} işlemlerinden kurtularak kodu 
                                             sadeleştirdik. Yukarıdaki fonkisoy ile bir farkı yoktur. */

  f1; // Fonksiyon tipini yazdırır.
  f1(); //Fonksiyonu yazdırır.
  print(f2(5)); 
  print(f3(5));
}

