import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:petvet/screens/map_screen.dart';
import 'package:petvet/widgets/bottom_bar.dart';
import 'package:petvet/widgets/menu_buttons.dart';
import 'auth_screen.dart';

class HomeScreen extends StatefulWidget {
  final String username;
  HomeScreen({Key key, @required this.username}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeah "+ widget.username),
        actions: <Widget>[
          // sign out 버튼

        ],
      ),
      body: Stack(
        children: [
          MenuButtons(),
          //BottomNavi(),
        ],
      )
    );
  }
}

// 기존 body 내용물
/*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                await googleSignIn.disconnect();
                await googleSignIn.signOut();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                        (Route<dynamic> route) => false);
              },
              child: Text("Log Out"),
              color: Colors.redAccent,
            ),
            SizedBox(
              height: 10.0,
            ),
            BottomNavi(),
          ],
        ),
      ),*/

/*
로그아웃 기능 iconbutton
IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              await googleSignIn.disconnect();
              await googleSignIn.signOut();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => AuthScreen()),
                      (Route<dynamic> route) => false);
            },
          ),
 */