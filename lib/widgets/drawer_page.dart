import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/text_tile.dart';
import 'package:twitter_clone/widgets/topics.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 22, bottom: 13),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "images/perfil.jpg",
                ),
                maxRadius: 30,
              ),
            ),
            TextTile(texto: "Pedro Pinto", subtexto: "@pedro_pinto95"),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 15, right: 8),
                  child: _follow(988, 'Following'),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, right: 8),
                  child: _follow(128, 'Followers'),
                ),
              ],
            ),
            Divider(),
            Topics(icon: Icons.perm_identity, text: "Profile", index: 0),
            Topics(icon: Icons.library_books, text: "Lists", index: 1),
            Topics(icon: Icons.equalizer, text: "Topics", index: 2),
            Topics(icon: Icons.turned_in_not, text: "Bookmarks", index: 3),
            Topics(icon: Icons.flash_on, text: "Moments", index: 4),
            Divider(
              height: 15,
            ),
            Topics(icon: Icons.open_in_new, text: "Twitter Ads", index: 5),
            Divider(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                'Settings and Privacy',
                style: TextStyle(fontSize: 23),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                'Help Center',
                style: TextStyle(fontSize: 23),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _follow(int number, String text) {
    return Row(
      children: <Widget>[
        Text(
          number.toString(),
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        )
      ],
    );
  }
}
