import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:daelim_2025/app/router/app_route.dart';
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
                      onMinus:
                          () =>
                              setState(() => _age = (_age > 0) ? _age - 1 : 0),
                      onPlus: () => setState(() => _age += 1),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: InDeContainer(
                      title: 'Weight(kg)',
                      value: _weight,
                      onMinus:
                          () => setState(
                            () => _weight = (_weight > 0) ? _weight - 1 : 0,
                          ),
                      onPlus: () => setState(() => _weight += 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              HeightBox(
                onChanged: (height) {
                  setState(() {
                    _height = height;
                  });
                },
              ),
              const SizedBox(height: 15),
              GenderBox(
                onChanged: (gender) {
                  _gender = gender;
                },
              ),
              const SizedBox(height: 20),
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
