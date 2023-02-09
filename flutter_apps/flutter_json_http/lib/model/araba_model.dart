// To parse this JSON data, do
//
//     final araba = arabaFromMap(jsonString);

import 'dart:convert';

Araba arabaFromMap(String str) => Araba.fromMap(json.decode(str)); // Mapten alınan string değerleri araba nesnesine dönüştürmemizi sağlıyor.

String arabaToMap(Araba data) => json.encode(data.toMap()); // araba nesnesini mape dönüştürmüş olduk.

class Araba {
    Araba({
        required this.arabaAdi,
        required this.ulke,
        required this.kurulusYili,
        required this.model,
    });

    final String arabaAdi;
    final String ulke;
    final int kurulusYili;
    final List<Model> model;

    factory Araba.fromMap(Map<String, dynamic> json) => Araba(
        arabaAdi: json["araba_adi"],
        ulke: json["ulke"],
        kurulusYili: json["kurulus_yili"],
        model: List<Model>.from(json["model"].map((x) => Model.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "araba_adi": arabaAdi,
        "ulke": ulke,
        "kurulus_yili": kurulusYili,
        "model": List<dynamic>.from(model.map((x) => x.toMap())),
    };
}

class Model {
    Model({
        required this.model,
        required this.fiyat,
        required this.benzinli,
    });

    final String model;
    final int fiyat;
    final bool benzinli;

    factory Model.fromMap(Map<String, dynamic> json) => Model(
        model: json["model"],
        fiyat: json["fiyat"],
        benzinli: json["benzinli"],
    );

    Map<String, dynamic> toMap() => {
        "model": model,
        "fiyat": fiyat,
        "benzinli": benzinli,
    };
}
