import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suhu_converter/widget/buttonKonversi.dart';

import 'widget/InputSuhu.dart';
import 'widget/resultSuhu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = new TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double reamur = 0;

  konversi() {
    setState(() {
      inputUser = double.parse(etInput.text);
      reamur = 4 / 5 * inputUser;
      kelvin = inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputSuhu(etInput: etInput),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ResultSuhu(
                    result: kelvin,
                    title: "Kelvin",
                  ),
                  ResultSuhu(
                    result: reamur,
                    title: "Reamur",
                  ),
                ],
              ),
              ButtonKonversi(konversi: konversi),
            ],
          ),
        ),
      ),
    );
  }
}
