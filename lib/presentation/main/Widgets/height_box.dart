import 'package:flutter/material.dart';
import 'package:daelim_2025/presentation/common/widgets/whitebox.dart';

class HeightBox extends StatefulWidget {
  final ValueChanged<double> onChanged;

  const HeightBox({super.key, required this.onChanged});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return Whitebox(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          const Text(
            'Height (CM)',
            style: TextStyle(fontSize: 16, color: Color(0xFF081854)),
          ),
          Text(
            _height.toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6c63FF),
            ),
          ),
          Slider(
            min: 50,
            max: 300,
            value: _height,
            activeColor: const Color(0xFF6c63FF),
            onChanged: (height) {
              setState(() {
                _height = height;
              });
              widget.onChanged(height);
            },
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('50 cm', style: TextStyle(fontSize: 12)),
              Text('300 cm', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
