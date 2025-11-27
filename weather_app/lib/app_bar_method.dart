import 'package:flutter/material.dart';

AppBar AppBarMethod({required List<Widget> actions, required String title}) {
  return AppBar(
    title: Text(title),
    backgroundColor: Color(0xff2196F3),
    foregroundColor: Colors.white,
    actions: actions,
  );
}
