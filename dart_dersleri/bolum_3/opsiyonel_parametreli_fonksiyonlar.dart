void main(List<String> args) {
  int toplamSonucu1 = toplama1(5, 6);
  print("toplam1 fonksiyonunun sonucu = $toplamSonucu1");

  int toplamSonucu2 = toplam2(5, s3: 7, s1: 7); //Değişkenler sıralı olmadığı için değer girilecek değişkenin adı girilmelidir.
  print("toplam2 fonksiyonunun sonucu = $toplamSonucu2");
}

//Opsiyonel değer girişli parametreler örneği. Bu örnekte değişkene değer girip girmemek kullanıcıya aittir.
int toplama1(int s1, [int s2 = 0, int s3 = 0]) { // Default değerin "0" verilme sebebi toplama işleminde "0" 'ın herhangi bir etkisinin olmamasıdır. 
  return s1 + s2 + s3;
}

/*Opsiyonel değer girişli ve opsiyonel sıra girişli parametreler örneği. Bu örnekte değişkene değer 
girip girmemek kullanıcıda iken girilecek değerin hangi parametreye atanacağı da kullanıcıya bağlıdır.*/
int toplam2(int s4, {int s1 = 0, int s2 = 0, int s3 = 0}) { //s4 değişkeni dışındaki tüm değişkenler opsiyoneldir.
  return s1 + s2 + s3 + s4;
}
