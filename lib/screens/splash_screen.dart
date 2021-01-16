import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User _user;

  @override
  // initState 함수는 위젯이 생성될 때 한번만 호출
  // 변수를 초기화할 때 필요
  void initState() {
    super.initState();
    initializeUser();
    navigateUser();
  }

  // get User authentication status here
  // 사용자 인증 상태 가져오기
  Future initializeUser() async {
    await Firebase.initializeApp();
    final User firebaseUser = await FirebaseAuth.instance.currentUser; // 현재 접속한 유저의 정보를 Firebase 에서 받아옴
    await firebaseUser.reload();
    _user = await _auth.currentUser; // 현재 접속 유저의 정보 받아옴
  }

  navigateUser() async {
    // checking whether user already loggedIn or not
    // 현재 유저가 로그인한 상태인지 아닌지 확인
    if (_auth.currentUser != null) {
      // && FirebaseAuth.instance.currentUser.reload() != null
      // 로그인하면 home_screen 으로 이동하고 현재 유저의 이름을 전송
      // 로그인하지 않으면 로그인 페이지로 이동
      Timer(
        Duration(seconds: 1),
              () =>
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) =>
                      HomeScreen(username: _auth.currentUser.displayName)),
                      (route) => false),
      );
    } else {
      Timer(Duration(seconds: 1),
          () => Navigator.pushReplacementNamed(context, "/auth"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            color: Color.fromRGBO(102, 255, 153, 100),
          ),
        ),
      ),
    );
  }
}


