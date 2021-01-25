import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  final String title;
  final String username;

  const TitleCard(this.title, this.username);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 45,
          width: 277,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
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
            padding: const EdgeInsets.only(left: 29.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${title.toUpperCase()}',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 19.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 45,
          width: 330.53,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
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
            padding: const EdgeInsets.only(left: 20.0, right: 18.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '$username',
                style: TextStyle(
                  color: Color(0xFFA8ABB7),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
