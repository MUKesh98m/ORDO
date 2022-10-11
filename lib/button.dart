import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class buttons extends StatelessWidget {
  const buttons({Key? key, required this.text, this.clickpage})
      : super(key: key);
  final text;
  final clickpage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385,
      height: 48,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(HexColor('#07A279'))),
          onPressed: () {
            clickpage;
          },
          child: Text(text)),
    );
  }
}
