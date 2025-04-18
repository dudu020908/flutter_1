import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/common/widgets/whitebox.dart';
import 'package:daelim_2025/presentation/main/Widgets/height_box.dart';
import 'package:daelim_2025/presentation/main/Widgets/in_de_container.dart';
import 'package:daelim_2025/presentation/main/Widgets/gender_box.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _age = 28;
  int _weight = 60;
  double _height = 100.0;
  Gender _gender = Gender.male;

  void _onCalculated() {
    debugPrint('나이 : $_age');
    debugPrint('몸무게 : $_weight');
    debugPrint('키 : $_height');
    debugPrint('성별 : $_gender');
    final chHeight = _height.round() / 100;
    final bmi = _weight / (chHeight * chHeight);
    debugPrint('BMI : $bmi');
    if (bmi < 18.5) {
      debugPrint('저체중');
    } else if (18.5 <= bmi && bmi < 23) {
      debugPrint('정상체중');
    } else if (23 <= bmi && bmi < 25) {
      debugPrint('비만전단계');
    } else if (25 <= bmi && bmi < 30) {
      debugPrint('1단계비만');
    } else if (23 <= bmi && bmi < 35) {
      debugPrint('2단계비만');
    } else {
      debugPrint('3단계비만');
    }
    context.pushNamed(
      AppRoute.result.name,
      queryParameters: {'bmi': bmi.toStringAsFixed(2)},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'BMI CALCULATOR',
                style: TextStyle(fontSize: 18, color: Color(0xFF081854)),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: InDeContainer(
                      title: 'Age',
                      value: _age,
                      onChanged: (val) => setState(() => _age = val),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: InDeContainer(
                      title: 'Weight(kg)',
                      value: _weight,
                      onChanged: (val) => setState(() => _weight = val),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              HeightBox(
                onChanged: (val) {
                  _height = val;
                },
              ),
              SizedBox(height: 15),
              GenderBox(
                onChanged: (gender) => setState(() => _gender = gender),
              ),
              SizedBox(height: 20),
              SizedBox(child: _buildMainButton(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainButton(BuildContext context) {
    return SizedBox(
      height: 75,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _onCalculated,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF6C63FF),
        ),
        child: const Text('Calculate BMI'),
      ),
    );
  }
}
