import 'package:flutter/material.dart';

// NoGlowScrollBehavior 클래스
// 스크롤이 생기는 위젯에서 스크롤 효과 제거
//
class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}