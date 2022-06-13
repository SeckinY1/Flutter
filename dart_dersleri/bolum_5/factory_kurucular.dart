void main(List<String> args) {
  Ogrenci sule = Ogrenci.factoryKurucu(-9, "Şule");
  print(sule.id);
  print(sule.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim); /* Factory kurucu metotunda parametre girildiği için burada da parametre alan 
                                    kurucu metto çalıştırmalıyız. Çünkü parametresiz varsayılan kurucu metotlar otomatik olarak çalışırlar fakat parametreli kurucu metotları biz oluştururuz. */

  factory Ogrenci.factoryKurucu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
