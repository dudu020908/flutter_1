import 'package:daelim_2025/presentation/common/widgets/whitebox.dart';
import 'package:daelim_2025/presentation/main/Widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart' show LucideIcons;

class InDeContainer extends StatefulWidget {
  final String title;
  final int value;
  final ValueChanged<int>? onChanged;

  const InDeContainer({
    super.key,
    required this.title,
    required this.value,
    this.onChanged,
  });

  @override
  State<InDeContainer> createState() => _InDeContainerState();
}

class _InDeContainerState extends State<InDeContainer> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  void _updateValue(int newValue) {
    setState(() => _value = newValue);
    widget.onChanged?.call(_value);
  }

  void onPlus() => _updateValue(_value + 1);
  void onMinus() => _updateValue((_value > 0) ? _value - 1 : 0);

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
