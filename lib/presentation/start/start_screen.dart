import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //scaffold
    //safearea 두가지는 화면 구성 필수요소
    return const Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(child: Column()),
    );
  }
}
