void main(List<String> args) {
  Er seckin = Er("Seçkin", 23); // Er sınıfı Asker sınıfının alt sınıfı olduğu için Asker sınıfından nesne oluşturmasak bile al sınıfı çalıştırdığımız anda ilk önce bağlı olduğu üst sınıfların kurucusu çalışır.
  seckin.selamla();
}

class Asker {
  String ad = "";
  int yas = 18;

  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("Asker sınıfından merhaba, adım $ad, yaşım $yas");
  }
}

class Er extends Asker { 
  Er(String ad, int yas) : super(ad, yas) {
    // Bu satırda "super()" komutu bir üst sınıfın kurucusuna giderek oradaki değişkenleri alır.
    print("Er sınıfının kurucusu çaıştı");

  }

  @override
  void selamla() {
    //super.selamla(); "super" komutu bir üst sınıfa gitmeye yarar. Bu kod satırında bir üst sınıfa git ve oradaki selamla komutunu olduğu gibi çalıştır demiş oluruz. Bu nedenle bu satırı değiştirip kendi komutumuzu yazmazsak default olarak bu komut çalışır ve kalıtsal olarak aldığımız komutları bu komut çalıştırır.

    print("Er sınıfından merhaba, adım $ad, yaşım $yas");
  }
}
