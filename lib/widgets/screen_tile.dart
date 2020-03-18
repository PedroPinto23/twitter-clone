import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ScreenTile extends StatefulWidget {
  @override
  _ScreenTileState createState() => _ScreenTileState();
}

class _ScreenTileState extends State<ScreenTile> {
  bool switchHeart = false;
  bool switchRt = false;
  bool swichMessage = false;

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
                '',
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
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          swichMessage = !swichMessage;
                        });
                      },
                      child: swichMessage == false
                          ? Icon(
                              EvaIcons.messageCircleOutline,
                              size: 20,
                            )
                          : Icon(
                              EvaIcons.messageCircleOutline,
                              size: 20,
                              color: Colors.blue,
                            ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          switchRt = !switchRt;
                        });
                      },
                      child: switchRt == false
                          ? Icon(
                              EvaIcons.repeat,
                              size: 20,
                            )
                          : Icon(
                              EvaIcons.repeat,
                              size: 20,
                              color: Colors.green,
                            ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          switchHeart = !switchHeart;
                        });
                      },
                      child: switchHeart == false
                          ? Icon(
                              EvaIcons.heartOutline,
                              size: 20,
                            )
                          : Icon(
                              EvaIcons.heart,
                              size: 20,
                              color: Colors.red,
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
