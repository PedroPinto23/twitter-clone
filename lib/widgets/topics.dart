import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  final IconData icon;
  final String text;
  final int index;

  Topics({@required this.icon, @required this.text, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15, top: 10),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 28,
            color: Colors.grey,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
