import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/common/widgets/whitebox.dart';
import 'package:daelim_2025/presentation/main/Widgets/height_box.dart';
import 'package:daelim_2025/presentation/main/Widgets/in_de_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                'BMI CALCULATOR',
                style: TextStyle(fontSize: 18, color: Color(0xFF081854)),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(child: InDeContainer(title: 'Age')),
                  SizedBox(width: 20),
                  Expanded(child: InDeContainer(title: 'Weight(kg)')),
                ],
              ),
              SizedBox(height: 25),
              HeightBox(),
              SizedBox(height: 25),
              Whitebox(padding: EdgeInsets.all(25), child: SizedBox.shrink()),
              SizedBox(height: 38),

              SizedBox(child: _buildMainButton(context)),
            ],
          ),
        ),
      ),
    );
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
}
