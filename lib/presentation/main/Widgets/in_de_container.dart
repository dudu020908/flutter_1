import 'package:daelim_2025/presentation/common/widgets/whitebox.dart';
import 'package:daelim_2025/presentation/main/Widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class InDeContainer extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const InDeContainer({
    super.key,
    required this.title,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Whitebox(
      padding: const EdgeInsets.all(27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 18)),
          Text(
            '$value',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleIconButton(
                onTap: onMinus,
                icon: LucideIcons.minus,
                title: '',
                value: value,
              ),
              const SizedBox(width: 20),
              CircleIconButton(
                onTap: onPlus,
                icon: LucideIcons.plus,
                title: '',
                value: value,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
