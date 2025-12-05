import 'package:flutter/material.dart';

AppBar AppBarMethod({required List<Widget> actions, required String title}) {
  return AppBar(
    elevation: 3,
    shadowColor: Colors.grey[400],
    title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
    actions: actions,
  );
}
