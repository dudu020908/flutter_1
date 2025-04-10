import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final _title = 'Get Started with \nTracking Your Health!';
  final _description =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';
  TextStyle get _titleStyle => TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  TextStyle get _descStyle => TextStyle(color: Color(0xFFC6C3f9), fontSize: 15);
  //앱 이름
  Widget _buildAppname() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  //이미지
  Widget _buildImg() {
    return Image.asset('assets/images/bmi_bike.png');
  }
  /*
  Widget _buildTitle() {
    return Text(_title, style: _titleStyle, textAlign: TextAlign.left);
  }

  //설명
  Widget _buildDescription() {
    return Text(_description, style: _descStyle, textAlign: TextAlign.left);
  }*/

  //타이틀과 설명을 묶은 위젯
  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          TextSpan(text: '\n'),
          WidgetSpan(child: SizedBox(height: 30)),
          TextSpan(text: _description, style: _descStyle),
        ],
      ),
    );
  }

  //시작 버튼
  Widget _buildStartButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.main.toPath),
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xFF081854)),
        child: Text('Get Started'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //scaffold
    //safearea 두가지는 화면 구성 필수요소
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                _buildAppname(),
                SizedBox(height: 60),
                _buildImg(),
                SizedBox(height: 95),
                _buildTitleDesc(),
                /*_buildTitle(),
                SizedBox(height: 15),
                _buildDescription(),*/
                SizedBox(height: 38),
                _buildStartButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
