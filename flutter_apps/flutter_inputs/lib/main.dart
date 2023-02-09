import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_inputs/diger_input_elemanlari.dart';
import 'package:flutter_inputs/input.dart';
import 'package:flutter_inputs/stepper.dart';
import 'package:flutter_inputs/tarih_saat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StepperOrnek(),
    );
  }
}
