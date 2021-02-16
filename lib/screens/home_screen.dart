import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:petvet/screens/map_screen.dart';
import 'package:petvet/widgets/locatePosition.dart';
import 'package:petvet/widgets/sideDrawer.dart';
import 'auth_screen.dart';

/*TODO
* 1. drawer widgets 으로 분리
*    참고 => https://github.com/flutter/flutter/issues/23998 => 완료
* 2. 토글 버튼 만들기
*    참고 => https://www.woolha.com/tutorials/flutter-using-togglebuttons-widget-examples
* 3. mapScreen 분리된 상태로 현재위치 버튼을 사용할 방법을 찾아보기
* 4. drawer header 부분에 유저 이름, 사진 표기
* */

class HomeScreen extends StatefulWidget {
  final String username;

  HomeScreen({Key key, @required this.username}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var _scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(10.0),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            heroTag: 'openDrawer',
            onPressed: () {
              setState(() {
                sideDrawer(name: widget.username);
                print(widget.username);
              });
              _scaffoldKey.currentState.openDrawer();
            },
            child: Icon(
              Icons.menu_rounded,
              color: Colors.redAccent,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: Color(0xFFECEDF1),
              ),
            ),
          ),
        ),

        //title: Text(widget.username, style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: sideDrawer(),
      body: MapScreen(),
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
