import 'package:flutter/material.dart';

class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {

  @override
  Widget build(BuildContext context) {
    double _iconSize = 28;
    Color _iconColor = Colors.black;

    return Container(
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            offset: Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // child<1> : 현재 위치
          IconButton(
            icon: Icon(
              Icons.my_location,
              size: _iconSize,
              color: _iconColor,
            ),
            onPressed: () {
              // 현재 위치 보여주기
              setState(() {
                _iconColor = Colors.redAccent;
              });
            },
          ),

          // child<2> : 주변 검색(20km, 검색 기능 포함)
          IconButton(
            icon: Icon(
              Icons.search,
              size: _iconSize,
              color: _iconColor,
            ),
            onPressed: () {
              // 주변 장소 검색, 검색 조회
            },
          ),

          // child<3> : 설정
          IconButton(
            icon: Icon(
              Icons.settings,
              size: _iconSize,
              color: _iconColor,
            ),
            onPressed: () {
              // 설정 페이지로 이동
            },
          ),
        ],
      ),
    );
  }
}

