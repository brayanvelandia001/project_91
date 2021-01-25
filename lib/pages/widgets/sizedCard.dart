import 'package:flutter/material.dart';

///Crea una card lista para mostrar la semaforizacion de las tablas
///opciones => Lista de opciones conteniendo el nombre y el color.
class SemaforiacionCard extends StatelessWidget {
  final Row opciones;

  const SemaforiacionCard(this.opciones);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
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
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: opciones,
      ),
    );
  }
}

class CircleOption extends StatelessWidget {
  final Color color;
  final String opcion;

  const CircleOption(this.color, this.opcion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: Row(
        children: [
          CircleAvatar(
            radius: 10,
            backgroundColor: color,
          ),
          SizedBox(
            width: 10,
          ),
          Text('$opcion'),
        ],
      ),
    );
  }
}

class CircleOptionContacto extends StatelessWidget {
  final Color color;
  final String opcion;

  const CircleOptionContacto(this.color, this.opcion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: Row(
        children: [
          CircleAvatar(
            radius: 10,
            backgroundColor: color,
          ),
          SizedBox(
            width: 10,
          ),
          Text('$opcion'),
        ],
      ),
    );
  }
}
