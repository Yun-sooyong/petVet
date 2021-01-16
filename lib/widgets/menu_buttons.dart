import 'package:flutter/material.dart';

class MenuButtons extends StatefulWidget {
  _MenuButtonsState createState() => _MenuButtonsState();
}

class _MenuButtonsState extends State<MenuButtons> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Align(
      alignment: FractionalOffset(1.0, 1.0),
      child: Container(
        color: Colors.grey,
        width: _size.width * 0.2,
        height: _size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                color: Colors.lime,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                color: Colors.indigo,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
