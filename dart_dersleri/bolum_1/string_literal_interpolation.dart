void main(List<String> args) {
  String ad = "Seçkin";
  String soyAd = "Yekrek";
  double en = 10;
  double boy = 12;

  print("$ad $soyAd");
  print("Soyadım olan $soyAd' te bulunan karakter sayısı:" + soyAd.length.toString());
  print("Soyad değişkenindeki karakter sayısı: ${soyAd.length}");
  print("Adım olan $ad değişkenindeki karakter sayısı: ${ad.length}");
  
  print("Eni $en, boyu $boy olan dikdörtgenin alanı: ${en*boy}");
  print("Eni ${en.toInt()}, boyu ${boy.toInt()} olan dikdörtgenin alanı: ${(en*boy).toInt()}");
  


} 