import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MenuButtons extends StatefulWidget {
  _MenuButtonsState createState() => _MenuButtonsState();
}

class _MenuButtonsState extends State<MenuButtons> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _conSize = 50;

    return Align(
      alignment: FractionalOffset(1, 1),
      child: Container(
        color: Colors.transparent,
        width: _size.width * 0.2,
        height: _size.height * 0.43,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: _conSize,
                height: _conSize,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey[200], width: 0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ]),
                child: InkWell(
                  onTap: () {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Tap')));
                  },
                )),
            Container(
                width: _conSize,
                height: _conSize,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey[200], width: 0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ]),
                child: InkWell(
                  onTap: () {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Tap')));
                  },
                )),
            Container(
              width: _conSize,
              height: _conSize,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey[200], width: 0.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(),
            ),
            Container(
                width: _conSize,
                height: _conSize,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey[200], width: 0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    )
                  ],
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Icon(
                        Icons.my_location,
                        color: Colors.amber,
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text('Tap')));
                      },
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
