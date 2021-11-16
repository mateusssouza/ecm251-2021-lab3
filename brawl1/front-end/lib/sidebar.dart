import 'package:brawl1/escrever_review.dart';
import 'package:brawl1/pre_login.dart';
import 'package:brawl1/testando.dart';
import 'package:brawl1/usuario.dart';
import 'package:flutter/material.dart';
import 'styles.dart';
import 'mocks/mock_review.dart';
import 'mocks/mock_user.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: Styles.brawlFont,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://help.supercellsupport.com/uploads/_500x376_fit_center-center_90_none/BS-game-icon.png?mtime=20201110153249&focal=none&tmtime=20210317151933"),
              fit: BoxFit.fitHeight)
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Pagina principal'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage(MockReview.items)),
              )
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('Profile'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Escreva uma review'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EscreverReview(MockUser.items)),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Minha Conta'),
            onTap: () => {
              // Navigator.of(context).pop()
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreLogin()),
              )
            },
          ),
        ],
      ),
    );
  }
}