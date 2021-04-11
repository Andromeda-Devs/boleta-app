import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:boletaapp/components/my_bottom_nav_bar.dart';
import 'package:boletaapp/screens/home/components/body.dart';
//import 'package:boletaapp/icons/app_icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        actions: <Widget>[
          //IconButton(icon: Icon(AppIcons.crown), onPressed: () => {}),
          IconButton(icon: Icon(Icons.search), onPressed: () => {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () => {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Menu 2"),
            )
          ],
        ),
      ),
    );
  }
}
