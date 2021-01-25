import 'package:flutter/material.dart';

class DisableBox extends StatelessWidget {
  final double width;
  final double height;
  final String text;

  const DisableBox({this.height, this.width, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width ?? 265,
      decoration: BoxDecoration(
        color: Color(0xFFE8E8E8),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Color(0xFFA8ABB7),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(text != 'null' ? '$text' : '')),
      ),
    );
  }
}
