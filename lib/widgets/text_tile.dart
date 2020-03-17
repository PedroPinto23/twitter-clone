import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
  final String texto;
  final String subtexto;

  TextTile({this.texto, this.subtexto});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              texto,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              subtexto,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.blue,
        )
      ],
    );
  }
}
