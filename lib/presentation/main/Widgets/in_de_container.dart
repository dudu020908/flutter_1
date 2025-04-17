import 'package:daelim_2025/presentation/common/widgets/whitebox.dart';
import 'package:daelim_2025/presentation/main/Widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class InDeContainer extends StatefulWidget {
  final String title;
  const InDeContainer({super.key, required this.title});

  @override
  State<InDeContainer> createState() => _InDeContainerState();
}

class _InDeContainerState extends State<InDeContainer> {
  int _value = 0;

  void onPlus() => setState(() => _value++);
  void onMinus() => setState(() => _value = (_value > 0) ? _value - 1 : 0);

  @override
  Widget build(BuildContext context) {
    return Whitebox(
      padding: const EdgeInsets.all(27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.title, style: const TextStyle(fontSize: 18)),
          Text(
            '$_value',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6c63FF),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleIconButton(
                onTap: onMinus,
                icon: LucideIcons.minus,
                title: '',
                value: _value,
              ),
              const SizedBox(width: 20),
              CircleIconButton(
                onTap: onPlus,
                icon: LucideIcons.plus,
                title: '',
                value: _value,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
