import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:twitter_clone/widgets/screen_tile.dart';
import 'package:twitter_clone/widgets/drawer_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();

    AnimatedContainer(
      duration: Duration(seconds: 5),
      child: Image.asset(
        'loading.jpg',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Icon(
          EvaIcons.twitter,
          size: 35,
          color: Colors.blue,
        ),
        leading: IconButton(
            icon: Icon(Icons.dehaze),
            color: Colors.blue,
            iconSize: 32,
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          EvaIcons.plus,
          size: 35,
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: DrawerPage(),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ScreenTile(),
              Divider(),
              ScreenTile(),
              Divider(),
              ScreenTile(),
              Divider(),
              ScreenTile(),
              Divider(),
              ScreenTile(),
              Divider(),
              ScreenTile(),
              Divider(),
              ScreenTile(),
            ],
          ),
        ),
      ),
    );
  }
}
