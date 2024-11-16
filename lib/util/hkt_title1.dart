// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HktTitle1 extends StatelessWidget {
  final String title;
  final Color? color;

  const HktTitle1({super.key, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width
      width: double.infinity,
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.grey,
        width: 1,
      ))),
      child: Text(
        title.toUpperCase(),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Asap',
          color: color,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
