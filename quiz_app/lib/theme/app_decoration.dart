import 'package:flutter/material.dart';

abstract class AppDecoration {
  static BoxDecoration SelectedAnswerBackgroundGradient = BoxDecoration(
    gradient: SecoundaryGradient(),
  );

  static LinearGradient SecoundaryGradient() {
    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Color(0xFFB8B2FF), Color(0xFFC6C2F8)],
    );
  }

  static BoxDecoration MainBackgroundDecoration = BoxDecoration(
    gradient: MainBackgroundGradient(),
  );

  static LinearGradient MainBackgroundGradient() {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
    );
  }
}
