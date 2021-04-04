import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  _SearchBarWidget createState() => _SearchBarWidget();
}

class _SearchBarWidget extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 50,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            //color: Colors.amber,
            alignment: Alignment.center,
            child: InkWell(
              child: Icon(
                Icons.arrow_back_ios_rounded,
                size: 30,
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 40,
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black87, width: 0.3),
                color: Colors.white),
            child: Container(
              //color: Colors.amber,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 10),
                        child: Icon(Icons.search),
                      )),
                  Expanded(
                    flex: 6,
                    child: Container(
                      //color: Colors.amber,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Input',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
