void main(List<String> args) {
  
  int sayi1 = 12;
  int sayi2 = 13;
  int sayi3 = 12;

  if(sayi1 < sayi2){
    print("$sayi1 sayısı, $sayi2 sayısından küçüktür.");
  }else{
    print("$sayi1 sayısı, $sayi2 sayısından büyüktür.");
  }

  print("*********************************");

  if(sayi1 > sayi3){
    print("$sayi1 sayısı, $sayi3 sayısından büyüktür.");
  }else if(sayi1 < sayi3){
    print("$sayi1 sayısı, $sayi3 sayısından küçüktür.");
  }else{
    print("Girilen sayılar birbirine eşittir.");
  }
  print("*********************************");

  int alinanNot = 75;

  if(alinanNot <= 100 && alinanNot >= 90){
    print("Harf notunuz AA' dır.");
  }else if(alinanNot <= 89 && alinanNot >= 85){
    print("Harf notunuz BA' dır.");
  }else if(alinanNot <= 84 && alinanNot >=80){
    print("Harf notunuz BB' dır.");
  }else if(alinanNot <= 79 && alinanNot >= 75){
    print("Harf notunuz CB' dır.");
  }else if(alinanNot <= 74 && alinanNot >= 65){
    print("Harf notunuz CC' dır.");
  }else if(alinanNot > 100 || alinanNot < 0){
    print("Yanlış bir ifade girdiniz");
  }else{
    print("Notunuz çok düşük, biraz daha çalışınız.");
  }
}