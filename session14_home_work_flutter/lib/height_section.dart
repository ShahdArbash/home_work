import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({
    super.key,
  });

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double _currentValue = 174;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Color(0xffff17172f),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: const Text(
              'HEIGHT',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.2,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _currentValue.round().toString(),
                style: const TextStyle(
                  fontSize: 65,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'cm',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white.withAlpha(200),
              inactiveTrackColor: Colors.white,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 18),
              thumbColor: Color(0xffffee0c55),
              overlayColor: Color(0xffffee0c55),
              valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
              valueIndicatorColor: Colors.pinkAccent,
              trackHeight: 0.5,
            ),
            child: Slider(
              value: _currentValue,
              min: 100,
              max: 225,
              divisions: 120,
              label: '${_currentValue.round()} cm',
              onChanged: (value) {
                setState(() => _currentValue = value);
              },
            ),
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
