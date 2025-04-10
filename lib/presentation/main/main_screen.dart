import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final _containerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
  );
  Widget _buildMainname() {
    return Text(
      'BMI CALCULATOR',
      style: TextStyle(color: Color(0xFF081854), fontSize: 18),
    );
  }

  Widget _buildContainer() {
    return Container(height: 120, decoration: _containerDecoration);
  }

  Widget _buildMainButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.result.toPath),
        style: ElevatedButton.styleFrom(
          foregroundColor: Color(0xFFFFFFFF),
          backgroundColor: Color(0xFF6C63FF),
        ),
        child: Text('Calculate BMI'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          /*  child: Container(
            alignment: Alignment.center,
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30),*/
          child: Column(
            spacing: 25,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              _buildMainname(),
              Row(
                spacing: 20,
                children: [
                  Expanded(child: _buildContainer()),
                  Expanded(child: _buildContainer()),
                ],
              ),
              _buildContainer(),
              _buildContainer(),
              SizedBox(height: 38),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: _buildMainButton(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
