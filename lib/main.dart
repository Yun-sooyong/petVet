import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petvet/screens/auth_screen.dart';
import 'package:petvet/screens/map_screen.dart';
import 'package:petvet/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

var routes = <String, WidgetBuilder>{
  "/auth": (BuildContext context) => AuthScreen(),
  "/map": (BuildContext context) => MapScreen(),
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'FaceBase',
    routes: routes,
    home: SplashScreen(),
  ));
}




