import 'package:flutter/material.dart';

class ScreenTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 13, left: 15, right: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "images/perfil.jpg",
              ),
              maxRadius: 25,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Pedro Pinto',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '@pedro_pinto95',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                'Some Text',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/twitter.jpg'),
                        fit: BoxFit.cover),
                    border: Border.all(width: 80, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8)),
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
