import 'package:flutter/material.dart';

class MyNavigator extends StatefulWidget {
  _MyNavigatorState createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator> {
  @override
  Widget build(BuildContext context) {
    double width90 = MediaQuery.of(context).size.width * 0.95;
    double height15 = MediaQuery.of(context).size.height * 0.12;

    return SafeArea(
      child: Container(
        child: Card(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 16),
          child: SizedBox(
            height: height15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              ],
            ),
          ),
        ),
      ),
    );
  }
}
