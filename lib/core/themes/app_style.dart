import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyle {
  static TextStyle headline1 = const TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
  );
  static TextStyle headline2 = const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
  );
  static TextStyle headline3 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );
  static TextStyle headline4 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  static TextStyle title1 = const TextStyle(fontSize: 40);
  static TextStyle title2 = const TextStyle(fontSize: 34);
  static TextStyle title3 = const TextStyle(fontSize: 30);
  static TextStyle title4 = const TextStyle(fontSize: 28);

  static TextStyle subtitle0 = const TextStyle(fontSize: 32, fontWeight: FontWeight.w500);
  static TextStyle subtitle1 = const TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  static TextStyle subtitle2 = const TextStyle(fontSize: 18, fontWeight: FontWeight.w700);
  static TextStyle subtitle3 = const TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
  static TextStyle subtitle4 = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  static TextStyle body1 =  const TextStyle(fontSize: 14);
  static TextStyle body2 = const TextStyle(fontSize: 12);
  static TextStyle body3 = const TextStyle(fontSize: 10);
  static TextStyle small = const TextStyle(fontSize: 9);
  static TextStyle verySmall = const TextStyle(fontSize: 8);

  static TextStyle link = const TextStyle(
    fontSize: 18,
    color: Colors.blue,
  );
}
