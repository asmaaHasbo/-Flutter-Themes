import 'package:flutter/material.dart';
import 'package:testing_in_flutter/core/theme/app_colors.dart';
import 'package:testing_in_flutter/core/theme/app_text_style.dart';

ThemeData getDarkModeTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkModeColor,

    //=======================  الحاجات اللي مش بتاخد لون زي مثلا ال مسطره
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.mainColor,
      brightness: Brightness.dark,
    ),

    //======================= app bar =======================
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkModeColor,
      foregroundColor: Colors.white,
    ),

    //======================= text theme=======================
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.gray400,
      displayColor: const Color.fromARGB(255, 130, 16, 96),
    ),

    //======================= btns =======================
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 52),

        backgroundColor: AppColors.mainColor,
        foregroundColor: Colors.white,

        //================= onpressed  مفيش  معطل ====
        disabledBackgroundColor: AppColors.gray800,
        disabledForegroundColor: AppColors.gray400,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),

          side: const BorderSide(color: AppColors.gray700),
        ),
        textStyle: AppTextStyles.font16W4Gray400,
      ),
    ),

    //====================== input decoration theme  borders ==============================
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black45),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black45),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.mainColor),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      fillColor: AppColors.gray800,
      filled: true,
      labelStyle: AppTextStyles.font14W5white,
      hintStyle: AppTextStyles.font16W4Gray400,
    ),
  );
}
