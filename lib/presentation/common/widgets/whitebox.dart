// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

//클래스에서 매개변수를 넣으려면 내부에서 넣어야함
class Whitebox extends StatelessWidget {
  final EdgeInsetsGeometry? padding; //변경 안되므로 final
  final Widget child;
  // constructor 만드는곳
  const Whitebox({super.key, this.padding, required this.child});

  @override //컨테이너 height 나 padding 값은 스크린 각각에서 받아와야함 매개변수 활용
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
