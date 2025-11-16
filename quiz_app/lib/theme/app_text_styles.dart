import 'package:flutter/material.dart';

abstract class AppTextStyles {
  // H1: 24px / 28px line-height
  static TextStyle medium24({Color? color}) => TextStyle(
    fontSize: 24.0,
    height: 28.0 / 24.0,
    color: color,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bold24({Color? color}) => TextStyle(
    fontSize: 24.0,
    height: 28.0 / 24.0,
    color: color,
    fontWeight: FontWeight.w700,
  );

  // H2: 18px / 21px line-height
  static TextStyle medium18({Color? color}) => TextStyle(
    fontSize: 18.0,
    height: 21.0 / 18.0,
    color: color,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bold18({Color? color}) => TextStyle(
    fontSize: 18.0,
    height: 21.0 / 18.0,
    color: color,
    fontWeight: FontWeight.w700,
  );

  // H3: 16px / 19px line-height
  static TextStyle medium16({Color? color}) => TextStyle(
    fontSize: 16.0,
    height: 19.0 / 16.0,
    letterSpacing: 0.0,
    color: color,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bold16({Color? color}) => TextStyle(
    fontSize: 16.0,
    height: 19.0 / 16.0,
    color: color,
    fontWeight: FontWeight.w700,
  );

  // H4: 12px / 14px line-height
  static TextStyle medium12({Color? color}) => TextStyle(
    fontSize: 12.0,
    height: 14.0 / 12.0,
    color: color,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bold12({Color? color}) => TextStyle(
    fontSize: 12.0,
    height: 14.0 / 12.0,
    color: color,
    fontWeight: FontWeight.w700,
  );

  static TextStyle regular24({Color? color}) => TextStyle(
    fontSize: 24.0,
    height: 28.0 / 24.0,
    color: color,
    fontWeight: FontWeight.w400,
  );

  static TextStyle regular18({Color? color}) => TextStyle(
    fontSize: 18.0,
    height: 21.0 / 18.0,
    color: color,
    fontWeight: FontWeight.w400,
  );

  static TextStyle regular16({Color? color}) => TextStyle(
    fontSize: 16.0,
    height: 19.0 / 16.0,
    color: color,
    fontWeight: FontWeight.w400,
  );

  static TextStyle regular12({Color? color}) => TextStyle(
    fontSize: 12.0,
    height: 14.0 / 12.0,
    color: color,
    fontWeight: FontWeight.w400,
  );
}
