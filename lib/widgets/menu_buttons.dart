import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuButtons extends StatefulWidget {
  _MenuButtonsState createState() => _MenuButtonsState();
}

class _MenuButtonsState extends State<MenuButtons> {

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _conSize = 50;

    return Align(
      alignment: FractionalOffset(1, 1),
      child: Container(
        color: Colors.transparent,
        width: _size.width * 0.18,
        height: _size.height * 0.42,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.my_location,
                  size: 30,
                  color: Colors.blueGrey,
                ),
                onPressed: () {

                },
              ),
            ),
            Container(
              child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.blueGrey,
                ),
                onPressed: () {

                },
              ),
            ),
            Container(
              child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.amber,
                ),
                onPressed: () {

                },
              ),
            ),
            Container(
              child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.blueGrey,
                ),
                onPressed: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
