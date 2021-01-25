import 'package:flutter/material.dart';

class FormCardBody extends StatelessWidget {
  final String title;
  final Widget child;

  const FormCardBody(this.title, this.child);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title'.toUpperCase(),
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
