import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet>{

  //bottom model sheet을 보여줌
  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            color: Colors.greenAccent,
            child: new Center(
              child: new Text("Hi ModalSheet"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    _showModalSheet();
  }
}


