import 'package:flutter/material.dart';

Widget titles(String title) {
  return Text(
    '$title',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 12.0,
      color: Colors.black,
    ),
  );
}
