import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  Widget _buildResultname() {
    return Text(
      'BMI CALCULATOR',
      style: TextStyle(color: Color(0xFF081854), fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                _buildResultname(),
                SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: _buildResultButton(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResultButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.start.toPath),
        style: ElevatedButton.styleFrom(
          foregroundColor: Color(0xFFFFFFFF),
          backgroundColor: Color(0xFF6C63FF),
        ),
        child: Text('Save the results'),
      ),
    );
  }
}
