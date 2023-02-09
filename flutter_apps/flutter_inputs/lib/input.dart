import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFromFieldDeneme extends StatefulWidget {
  TextFromFieldDeneme({Key? key}) : super(key: key);

  @override
  State<TextFromFieldDeneme> createState() => _TextFromFieldDenemeState();
}

class _TextFromFieldDenemeState extends State<TextFromFieldDeneme> {
  String? _kullaniciAdi = "", _email = "", _sifre = "";
  final _fromKey = GlobalKey<
      FormState>(); // Yukarıda oluşturulan değişkenler bu yapı ile global hale geldi.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextFromField Örneği")),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                  key:
                      _fromKey, // Global değişkenleri build yapımızda kullanılır hale getirdik.
                  autovalidateMode: AutovalidateMode
                      .always, // Hata mesajlarını aktif etmek için kullanılması zorunludur.
                  child: Column(
                    children: [
                      TextFormField(
                        //initialValue: "Seçkin Yekrek", // Başlangıç için default bir değer girmek için kullanılır. Kullanımı zorunlu değildir.
                        validator: (deger) {
                          if (deger!.length < 4) {
                            return "Kullanıcı adı en az 4 karakterden oluşmalı";
                          } else
                            return null;
                        },
                        onSaved: (deger) {
                          _kullaniciAdi =
                              deger; // Girilen değeri kullaniciAdi değişkenine atmayı sağladık.
                        },
                        decoration: InputDecoration(
                            labelText: "Kullanıcı Adı",
                            hintText: "Kullanıcı Ad Giriniz",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (deger) {
                          if (!EmailValidator.validate(deger!)) {
                            return "Geçerli E-Mail adresi giriniz";
                          } else
                            return null;
                        },
                        onSaved: (deger) {
                          _email = deger;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "E-Mail",
                            hintText: "E-Mail adresi giriniz"),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (deger) {
                          if (deger!.length < 4) {
                            return "Şifre 4 karakterden küçük olamaz";
                          } else
                            return null;
                        },
                        onSaved: (deger) {
                          _sifre = deger;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Şifre",
                            hintText: "Şifre Giriniz"),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            bool sonuc = _fromKey.currentState!
                                .validate(); // Yukarıdaki aşamalarda değişkenlere kayıt edilen değerlerin true olup olmadığının değerleri alınan aşamadır.
                            if (sonuc == true) {
                              _fromKey.currentState!
                                  .save(); //Eğer alınan 3 değer de yukarıdaki sorgudan true değer alıyorsa değişkenleri kayıt ettiğimiz bölüm.

                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      "Kullanıcı Adı:$_kullaniciAdi\nE-Mail:$_email\nŞifre:$_sifre")));
                            }
                          },
                          child: Text("Kaydol"))
                    ],
                  )))),
    );
  }
}
