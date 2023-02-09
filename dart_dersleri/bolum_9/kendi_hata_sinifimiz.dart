void main(List<String> args) {
  try {
    Ogrenci seckin = Ogrenci(-5);
  } on AgeException catch (e) {
    print(e.mesaj);
  }
}

class AgeException implements Exception {
  String mesaj;

  AgeException(
      {this.mesaj =
          "Age Exception"}); /* Defaul bir mesaj değeri girdik ve kullanıcıya bağlı hale getrdik. Kullanıcı Ogrenci sınıfı içinde mesaj değerini değiştirmezse hata 
                                                  burada yazıldığı gibi ekrana yazılır. */
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(
          mesaj: "Hatalı yaş girildi - Yaş değeri negaif olamaz.");
    } else {
      this.yas = yas;
      print(yas);
    }
  }
}
