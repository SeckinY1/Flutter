import 'package:flutter/material.dart';

class StepperOrnek extends StatefulWidget {
  StepperOrnek({Key? key}) : super(key: key);

  @override
  State<StepperOrnek> createState() => _StepperOrnekState();
}

class _StepperOrnekState extends State<StepperOrnek> {
  int _aktifStep = 0;
  String? isim, mail, sifre;
  List<Step>? tumStepler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumStepler = _tumStepler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Örneği"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
          child: Stepper(
        steps: tumStepler!,
        currentStep: _aktifStep,
        onStepTapped: (tiklanilanStep) {
          setState(() {
            _aktifStep = tiklanilanStep;
          });
        },
        onStepContinue: () {
          setState(() {
            if (_aktifStep < tumStepler!.length - 1) {
              _aktifStep++;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_aktifStep > 0) {
              _aktifStep--;
            }
          });
        },
      )),
    );
  }
}

List<Step> _tumStepler() {
  List<Step> stepler = [
    Step(
        title: Text("Kullanıcı Adı"),
        subtitle: Text("Kullanıcı Adı Alt Başlık"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: "Username Label",
              hintText: "Username Hint",
              border: OutlineInputBorder()),
        )),
    Step(
        title: Text("Mail"),
        subtitle: Text("Mail Alt Başlık"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: "Mail Label",
              hintText: "Mail Hint",
              border: OutlineInputBorder()),
        )),
    Step(
        title: Text("Şifre"),
        subtitle: Text("Şifre Başlık"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: "Şifre Label",
              hintText: "Şifre Hint",
              border: OutlineInputBorder()),
        )),
  ];

  return stepler;
}
