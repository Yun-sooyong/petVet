import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petvet/screens/auth_screen.dart';
import 'package:petvet/widgets/noGlowScrollBehavior.dart';

class SideDrawer extends StatefulWidget {
  final String name;

  SideDrawer({Key key, this.name}) : super(key: key);

  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: BoxDecoration(),
          child: ScrollConfiguration(
            behavior: NoGlowScrollBehavior(),
            child: ListView(
              //padding: EdgeInsets.zero, // 휴대폰 상태바 포함
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(87, 203, 171, 1),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('data1'),
                        Text('data1'),
                        Text('data1'),
                      ],
                    ),
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Item 1'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(
                    'Item 2',
                  ),
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
          )),
    );
  }
}