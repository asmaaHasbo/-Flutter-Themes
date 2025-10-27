import 'package:flutter/painting.dart';
import 'package:testing_in_flutter/core/theme/app_font_family.dart';

class AppTextStyle {
  AppTextStyle._();
  static const TextStyle font16W400Gray = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xFF808080),
    fontFamily: AppFontFamily.manrope,
  );
}
