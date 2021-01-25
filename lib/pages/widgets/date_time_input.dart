import 'package:flutter/material.dart';

class DateTimeFormater extends StatelessWidget {
  final DateTime fecha;

  const DateTimeFormater({@required this.fecha});
  @override
  Widget build(BuildContext context) {
    return Text(
        '${fecha.day < 10 ? '0${fecha.day}' : '${fecha.day}'}/${fecha.month < 10 ? '0${fecha.month}' : '${fecha.month}'}/${fecha.year}');
  }
}

String dateTimeFormater(DateTime fecha) {
  return '${fecha.day < 10 ? '0${fecha.day}' : '${fecha.day}'}/${fecha.month < 10 ? '0${fecha.month}' : '${fecha.month}'}/${fecha.year}';
}

String dateTimeFormaterStorage(DateTime fecha) {
  return '${fecha.day < 10 ? '0${fecha.day}' : '${fecha.day}'}-${fecha.month < 10 ? '0${fecha.month}' : '${fecha.month}'}-${fecha.year}-${fecha.hour}-${fecha.minute}-${fecha.second}';
}
