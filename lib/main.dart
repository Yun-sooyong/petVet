import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petvet/screens/auth_screen.dart';
import 'package:petvet/screens/home_screen.dart';
import 'package:petvet/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

var routes = <String, WidgetBuilder>{
  "/auth": (BuildContext context) => AuthScreen(),
  "/home": (BuildContext context) => HomeScreen(),
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarBrightness: Brightness.dark));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hot Dogs Place',
    routes: routes,
    color: Colors.black,
    home: SplashScreen(),
  ));
}




