import 'package:flutter/material.dart';

class ButtonKonversi extends StatelessWidget {
  const ButtonKonversi({
    Key? key,
    required this.konversi,
  }) : super(key: key);

  final Function konversi;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: konversi,
        child: Text(
          "Konversi",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.lightBlue,
      ),
    );
  }
}
