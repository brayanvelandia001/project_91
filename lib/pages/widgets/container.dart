import 'package:flutter/material.dart';

class WebContainer extends StatelessWidget {
  final Widget child;
  const WebContainer({@required this.child, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 895,
      height: double.infinity,
      child: child,
    );
  }
}
