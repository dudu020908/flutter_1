import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/common/widgets/whitebox.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultScreen extends StatelessWidget {
  final _containerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
  );
  ResultScreen({super.key});

  Widget _buildResultname() {
    return Text(
      'BMI CALCULATOR',
      style: TextStyle(color: Color(0xFF081854), fontSize: 18),
    );
  }

  Widget _buildResultdesc() {
    return Text(
      'Body Mass Index',
      style: TextStyle(color: Color(0xFF081854), fontSize: 24),
    );
  }

  Widget _buildContainer() {
    return Container(height: 380, decoration: _containerDecoration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: 340,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                _buildResultname(),
                SizedBox(height: 60),
                _buildResultdesc(),
                SizedBox(height: 30),
                SizedBox(height: 38),
                SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: _buildResultButton(context),
                ),
                SizedBox(height: 60),
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
