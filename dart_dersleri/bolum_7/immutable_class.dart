void main(List<String> args) {
  const Student seckin = Student(10, "seckin");
  final Student sule = const Student(5, "şule");
  var ilkan = const Student(9, "ilkan");
  final Student seckin2 = const Student(10, "seckin");

  if (seckin == seckin2) {
    print("Eşit");
  } else
    print("Eşit değil");
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
