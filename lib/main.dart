import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petvet/screen/map_screen.dart';
import 'package:petvet/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'petvet',
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              // 홈
              /*Container(
                alignment: Alignment.center,
                color: Colors.indigo,
                child: Text(
                  'HOME',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),*/
              MyMap(),
              // 주변
              Container(
                alignment: Alignment.center,
                color: Colors.lime,
                child: Text(
                  'AROUND',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // 즐겨찾기
              ),Container(
                alignment: Alignment.center,
                color: Colors.purple,
                child: Text(
                  'FAVORITE',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // 길찾기
              ),Container(
                alignment: Alignment.center,
                color: Colors.pinkAccent,
                child: Text(
                  'FIND',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
