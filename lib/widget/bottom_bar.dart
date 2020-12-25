import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Colors.white,
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.redAccent,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          border: Border.all(color: Colors.white, width: 7),
          gradient:
              LinearGradient(colors: [Colors.redAccent, Colors.orangeAccent]),
          borderRadius: BorderRadius.circular(30),
          //color: Colors.redAccent,
        ),
        tabs: [
          Tab(
            icon: Icon(
              Icons.map_outlined,
              size: 20,
            ),
            /*child: Text(
              '지도',
              style: TextStyle(fontSize: 10),
            ),*/
          ),
          Tab(
            icon: Icon(
              Icons.search_outlined,
              size: 20,
            ),
            /*child: Text(
              '주변',
              style: TextStyle(fontSize: 10),
            ),*/
          ),
          Tab(
            icon: Icon(
              Icons.star_border,
              size: 20,
            ),
            /*child: Text(
              '즐겨찾기',
              style: TextStyle(fontSize: 10),
            ),*/
          ),
          Tab(
            icon: Icon(
              Icons.arrow_upward,
              size: 20,
              color: Colors.blueAccent,
            ),
            /*child: Text(
              '길찾기',
              style: TextStyle(fontSize: 11, color: Colors.blue),
            ),*/
          ),
        ],
      ),
    );
  }
}
