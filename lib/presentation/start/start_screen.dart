import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
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

  //타이틀
  Widget _buildTitle() {
    return Text(
      'Get Started with \nTracking Your Health!',
      style: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }

  //설명
  Widget _buildDescription() {
    return Text(
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
      style: TextStyle(color: Color(0xFFC6C3f9), fontSize: 15),
      textAlign: TextAlign.left,
    );
  }

  //시작 버튼
  Widget _buildStartButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: Text('Get Started')),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                _buildAppname(),
                SizedBox(height: 60),
                _buildImg(),
                SizedBox(height: 95),
                _buildTitle(),
                SizedBox(height: 15),
                _buildDescription(),
                SizedBox(height: 38),
                _buildStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
