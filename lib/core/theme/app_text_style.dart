import 'package:flutter/material.dart';
import 'package:testing_in_flutter/core/theme/app_colors.dart';
import 'package:testing_in_flutter/core/theme/app_font_family.dart';

class AppTextStyles {
  AppTextStyles._();
  static const TextStyle font16W4Gray400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.gray400,
    fontFamily: AppFontFamily.manrope,
  );

  static const TextStyle font18W400Gray = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Color(0xFF808080),
    fontFamily: AppFontFamily.manrope,
  );

  static const TextStyle font14W5white = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontFamily: AppFontFamily.manrope,
  );

  static const TextStyle font24W700darkBlack = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.black87,
    fontFamily: AppFontFamily.manrope,
  );


}
