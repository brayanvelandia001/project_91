import 'package:flutter/material.dart';

class TextBoxInput extends StatelessWidget {
  final TextEditingController value;
  final double height, width;
  final bool require;

  const TextBoxInput({
    @required this.value,
    this.require = false,
    this.height,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width ?? 265,
      child: TextField(
        controller: value,
        autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: require ? Color(0xFFB2171C) : Color(0xFFA8ABB7),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: require ? Color(0xFFB2171C) : Color(0xFFA8ABB7),
            ),
          ),
        ),
      ),
    );
  }
}
