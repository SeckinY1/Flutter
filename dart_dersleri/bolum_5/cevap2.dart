class Ogrenci {
  int id;
  int not;

  Ogrenci({this.id = 1, this.not = 1});

  @override
  String toString() {
    return "ID: $id, Not: $not";
  }  
}
