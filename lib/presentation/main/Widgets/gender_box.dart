import 'package:daelim_2025/presentation/common/widgets/whitebox.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderBox extends StatefulWidget {
  final Function(Gender gender) onChanged;
  const GenderBox({super.key, required this.onChanged});

  @override
  State<GenderBox> createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {
  Gender _gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Whitebox(
      padding: EdgeInsets.all(25),
      child: Column(
        spacing: 10,
        children: [
          Text('Gender', style: TextStyle(fontSize: 18)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Male', style: TextStyle(fontSize: 18)),
              Switch.adaptive(
                value: _gender == Gender.female,
                onChanged: (value) {
                  setState(() {
                    _gender = value ? Gender.female : Gender.male;
                    widget.onChanged(_gender);
                    //UI변경 코드 true 면 여자, false 면 남자로 변경
                    debugPrint('성별 :$_gender');
                  });
                },
              ),
              Text('Female', style: TextStyle(fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }
}
