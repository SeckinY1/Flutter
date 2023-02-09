void main(List<String> args) {
  //SORU 1: 3 tane double değişken oluşturup bunların ortalamasını yazdıran bir program yazınız.

  double say1 = 5.6;
  double say2 = 2.4;
  double say3 = 4.5;

  print("($say1 + $say2 + $say3)/3 işleminin sonucu = ${(say1 + say2 + say3)/3}");

print("****************************************************************");
  //SORU 2: Kenar uzunluklarını girdiğiniz üçgenin çeşidini yazdıran bir program yazınız.

  int kenar1 = 5, kenar2 = 5, kenar3=4;

  if(kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3){
    print("Kenar uzunlukları girilen üçgen türü: ÇEŞİTKENAR ÜÇGEN");
  }else if(kenar1 == kenar2 && kenar2 == kenar3){
    print("Kenar uzunlukları girilen üçgen türü: EŞKENAR ÜÇGEN");
  }else{
    print("Kenar uzunlukları girilen üçgen türü: İKİZKENAR ÜÇGEN");
  } 
print("****************************************************************");

  //SORU 3: Vize ve final notlarını alıp dersi geçip geçemediğini bulan bir program yazın (Geçme notu 50'dir).

  double vizeNotu = 45, finalNotu = 50, gano;

  gano = (vizeNotu * 0.4) + (finalNotu*0.6);
  if(finalNotu<50){
    print("Final notunuz 50' nin altında olduğu için kaldınız..");
  }else if(gano >= 50){
    print("Tebrikler! GANO' nuz:$gano, Dersi geçtiniz");
  }else{
    print("Üzgünüm! GANO' nuz: $gano, Daha çok çalışınız");
  }
print("****************************************************************");

  //SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleri ile yazınız.

        //For içi:

        for(int i =0; i<5; i++){
          print("Seçkin Yekrek");
        }
        print("**************");
        
        //While için:

        int i=0;
        while( i<5){
          print("Seçkin Yekrek");
          i++;
        }
        print("**************");
        
        //DO_WHİLE için:

        int j=0;
        do{
          print("Seçkin Yekrek");
          j++;
        }while(j<5);

print("****************************************************************");
  
  //SORU 5: 1' den 100' e kadar olan ve 15 ile tan bölünebilen sayıların karelerini ekrana yazdırın.

  for(int sayici=1; sayici<=100; sayici++){

    if(sayici % 15 == 0){
      print("$sayici sayısının karesi = ${sayici*sayici}");
    }else{
      continue;
    }
  }
print("****************************************************************");

  //SORU 6: Tanımlanan int bir sayının faktoriyelini bulan bir uygulama yazınız.
  int toplam=1;
  for(int i=1; i<=5; i++){
    toplam=toplam*i;
  }
  print(toplam);
  
}