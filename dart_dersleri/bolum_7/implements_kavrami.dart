import 'dart:async';

void main(List<String> args) {
  Hayvan h1 = Kopek(); // Kopek sınıfını bu şekilde tanımlarsak implements ettiğimiz sınıfların özelliğini kullanamayız.
  Kopek h2 = Kopek(); // İmplements ettiğimiz sınıfların özelliklerini kullanmak için Kopek sınıfını bu şekilde tanımlamamız gerekir.
  Insan i1 = Insan();

  h1.tanit();
  print("******************");
  h2.havlayan();
  h2.kosan();
  h2.tanit();
  print("******************");
  i1.kosan();
}

abstract class Hayvan {
  void tanit() {
    print("Ben bir hayvanım");
  }
}

abstract class Ucan {
  void ucan();
}

abstract class Kosan {
  void kosan();
}

abstract class Havlayan {
  void havlayan();
}

class Kopek extends Hayvan implements Kosan, Havlayan {
  @override
  void havlayan() {
    print("Ben havlayabilirim");
  }

  @override
  void kosan() {
    print("Ben koşabilirim");
  }
}

class Insan implements Kosan {
  // Bir sınıfı implements etmek için bir sınıftan extends etmeye gerek yoktur.
  @override
  void kosan() {
    print("Ben koşabiliyorum");
  }
}
