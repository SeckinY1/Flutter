import 'musteri.dart';
import 'veritabani_islemleri.dart';

void main(List<String> args) {
  VeritabaniIslemleri baglanti = VeritabaniIslemleri();
  Musteri musteri = Musteri(100);
  musteri.musteriNoAta = 301;
  print(musteri.musteriNoSoyle);
  musteri.bilgileriYaz();

  bool sonuc = baglanti.baglan();
  if (sonuc) {
    print("Bağlandım");
  } else
    print("Bağlanamadım");
}
