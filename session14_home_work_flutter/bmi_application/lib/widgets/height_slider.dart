import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  final double initialValue;
  final ValueChanged<double>? onChanged;

  const HeightSlider({
    super.key,
    required this.initialValue,
    this.onChanged,
  });

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  late double _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.white.withAlpha(200),
        inactiveTrackColor: Colors.white.withAlpha(60),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 18),
        thumbColor: const Color(0xffffee0c55),
        overlayColor: const Color(0x22ee0c55),
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: Colors.pinkAccent,
        trackHeight: 1,
      ),
      child: Slider(
        value: _currentValue,
        min: 100,
        max: 225,
        divisions: 125,
        label: '${_currentValue.round()} cm',
        onChanged: (value) {
          setState(() {
            _currentValue = value;
          });
          widget.onChanged?.call(value);
        },
      ),
    );
  }
}
