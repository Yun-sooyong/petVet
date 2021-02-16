import 'package:flutter/material.dart';
import 'package:petvet/screens/auth_screen.dart';

class sideDrawer extends StatefulWidget {
  final String name;

  sideDrawer({Key key, @required this.name}):super(key: key);

  @override
  _sideDrawerState createState() => _sideDrawerState();
}

class _sideDrawerState extends State<sideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(

          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Item 1'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Item 2'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Item 3'),
            onTap: () {},
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Label',
            ),
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Item A'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}