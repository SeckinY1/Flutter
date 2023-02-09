void main(List<String> args) {
  String harfNotu = "BA";

  switch(harfNotu){
    
    case "AA":
    print("Notunuz 90-100 arasındadır.");
    break;

    case "BA":
    print("Notunuz 80-90 arasındadır.");
    break;

    case "BB":
    print("Notunuz 70-80 arasındadır.");
    break;
    
    case "CB":
    print("Notunuz 60-70 arasındadır.");
    break;

    case "CC":
    print("Notunuz 50-60 arsındaıdr.");
    break;

    case "FF":
    print("Notunuz 50'den düşük, daha çok çalışınız.");
    break;

    default:{
      print("Hatalı yada eksik bilgi girdiniz.");
    }

  }

  int yas = 22;

  switch(yas){
    
    case 18:
    print("Yaşınız 18 dir.");
    break;

    case 22:
    print("Yaşınız 22' dir.");
    break;

    default: {
      print("Bilinmeyen değer.");
    }
  }

  int sayi = 26;
  int bolum;

  bolum = (sayi/10).toInt();

  switch(bolum){

    case 3:
    print("Girilen sayı 30' a eşit yada büyüktür.");
    break;

    case 2:
    print("Girilen sayı 20-30 arasındadır.");
    break;

    case 1:
    print("Girilen sayı 10-20 arasındadır.");
    break;

    case 0:
    print("Girilen sayı 10' dan küçüktür.");
    break;

    default:{
      print("Girilen sayı 39' dan büyüktür.");
    }

    }
  }

