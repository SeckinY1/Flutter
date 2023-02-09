void main(List<String> args) {
  final liste1 = [1, 2];
  final liste2 = [1, 2];

  const liste3 = [1, 2];
  const liste4 = [1, 2];

  if (liste1 == liste2) {
    print("Eşit");
  } else
    print("Eşit değil");

  if (liste3 == liste4) {
    print("Eşit");
  } else
    print("Eşit değil");

  liste1.add(5); //Bu liste final ile oluşturulduğu için eleman ekleme/çıkarna yapılabilir.
  liste2.add(6); //Bu liste final ile oluşturulduğu için eleman ekleme/çıkarna yapılabilir.

  // liste3.add(5); Bu liste const ile oluşturulduğu için eleman ekleme/çıkarna yapılamaz.
  // liste3.add(5); Bu liste const ile oluşturulduğu için eleman ekleme/çıkarna yapılamaz.

}
