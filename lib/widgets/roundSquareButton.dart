import 'package:flutter/material.dart';

class RoundSquareButton extends StatelessWidget {
  RoundSquareButton({
    Key key,
    this.onTap,
    this.length: 60.0,
    this.child,
    this.foregroundColor: Colors.white,
    this.tag,
  }) : super(key: key);

  final onTap; // 버튼 터치 반응
  final length; // 버튼 크기 (기본 60)
  final child; // 자식
  final foregroundColor; // 배경 색상(기본 화이트)
  final tag;  // floatingActionButton 의 heroTag

  @override
  Widget build(BuildContext context) {
    return Container(
      height: length,
      width: length,
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
      child: FloatingActionButton(
        child: child,
        backgroundColor: foregroundColor,
        heroTag: tag,
        onPressed: () {
          if (onTap != null) {
            onTap();
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Color(0xFFECEDF1),
          ),
        ),
      ),
    );
  }
}
