// ignore_for_file: public_member_api_docs, sort_constructors_first
enum Cinsiyet {
  // Bu veri çok küçüktür. Bu nedenle sınıf kadar büyük olmayan enam yapısını kullandık.
  KADIN,
  ERKEK
}

enum Renkler {
  KIRMIZI,
  SARI,
  YESIL,
}

class UserInformation {
  final String isim;
  final Cinsiyet cinsiyet;
  final List<String> renkler;
  final bool ogrenciMi;

  UserInformation({
    required this.isim,
    required this.cinsiyet,
    required this.renkler,
    required this.ogrenciMi,
  });
}
