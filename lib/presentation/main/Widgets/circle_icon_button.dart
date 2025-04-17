// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final String title;
  final int value;
  const CircleIconButton({
    super.key,
    required this.icon,
    this.onTap,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector //InkWell GestureDetector 도 가능
    (
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(50)방법으로도 가능
          shape: BoxShape.circle,
          color: Color(0xFF081854),
        ),
        child: Icon(icon, color: Colors.white, size: 35),
      ),
    );
  }
}
