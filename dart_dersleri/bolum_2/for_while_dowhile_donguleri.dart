void main(List<String> args) {
  for(int i=0; i<10; i++){

    print("Seçkin Yekrek");
  }

  print("*************");

  for(int i=0; i<=10; i++){

    if(i % 2 == 0){
      print(i); 
    }
  }

  print("*************");

  for(int i=0; i<10; i++){
    
    if(i>5){
      break;
    }
    print("$i. değer");
  }
  print("*************");

  for(int i=0; i<10;i++){

    if(i>5){
      print("continue i değeri: $i");
    }else{
      print("i değeri 5'e eşit ve 5'ten küçük olduğu için ekrana yazdırılamıyor.");
      continue;
    }
  }
print("**********************");

breakDongusu: for(int i=1; i<=3; i++){ 
//Burada yapılan işlem iç içe döngü mantığını anlatmaktır. breakdongusu değişkeni 2 olduğunda döngüyü sonlandıran bir kod yazılmak istenmiştir.

  for(int j=1; j<=3; j++){

    if(i==2){
      break breakDongusu;
    }
    print("$i * $j = ${i*j}");
  }
}
print("**********************");
continueDongusu: for (int i=1; i<=3; i++) {
//Burada yapılan işlem iç içe döngü mantığını anlatmaktır. continuedongusu değişkeni 2 olduğunda döngünün o aşamasını atlayan ve diğer değere geçen bir kod yazılmak istenmiştir.
    
    for(int j=1; j<=3; j++){
      if(i==2){
        continue continueDongusu;
      }

      print("$i * $j = ${i*j}");
    }
}
  
}