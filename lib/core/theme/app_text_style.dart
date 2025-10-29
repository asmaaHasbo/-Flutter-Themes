import 'package:flutter/painting.dart';
import 'package:testing_in_flutter/core/theme/app_colors.dart';
import 'package:testing_in_flutter/core/theme/app_font_family.dart';

class AppTextStyles {
  AppTextStyles._();
  static const TextStyle font16W400Gray = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.mainColor,
    fontFamily: AppFontFamily.manrope,
  );

  static const TextStyle font18W400Gray = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Color(0xFF808080),
    fontFamily: AppFontFamily.manrope,
  );

  static const TextStyle font14W400Gray = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF808080),
    fontFamily: AppFontFamily.manrope,
  );
}
