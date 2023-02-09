import 'dart:math';

void main(List<String> args) {
  try {
    double sayi = kareKok(-5);
  } catch (e) {
    print(e);
  }
}

double kareKok(int i) {
  try {
    if (i < 0) {
      throw FormatException(
          "Sayı negatif olamaz"); /* Throw ilk olarak bu blokta catch arar. Eğer yoksa hatanın alındığı satıra dönerek orada catch arar. Bulunduğu yerde catch bulursa 
                                                    onu çalıştırır. Bir catch bulunamazsa "Hata fırlatıldı fakat catch bulunamadı" gibi bir hata alınır. */
    } else {
      return sqrt(i);
    }
  } on FormatException catch (e) {
    //throw ile catch komutu bu satırda olduğu gibi de kullanılabilir main içerisindeki 6. satırda olduğu gibi de kullanılabilir.
    print(e.message + " ve metot içindeyim");
  } finally {
    /* try yapısı içinde throw olduğu için hata alınması halinde throw dan sonra kod çalışmaz. Değer döndüren bir fonksiyon ise kendisine bir return komutu bekler. finally 
              ise her şekilde çalıştığı için throw' u umursamaz ve return' u çalıştırır. Bu nedenle finally kullandık. */
    return 0;
  }
}
