import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petvet/screen/map_screen.dart';
import 'package:petvet/widget/bottom_bar.dart';
import 'package:petvet/widget/bottom_sheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'petvet',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.redAccent
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              MyMap(),
              // 주변
              Container(),
              //MyBottomSheet(),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                child: Text(
                  'FAVORITE',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // 길찾기
              ), Container(
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
