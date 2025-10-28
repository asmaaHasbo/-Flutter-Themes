import 'package:flutter/widgets.dart';
import 'package:testing_in_flutter/core/theme/app_colors.dart';

class AppShadows {
  AppShadows._();
  static BoxShadow boxShadow1 = BoxShadow(
    color: AppColors.shadowColor.withValues(alpha: .6),
    offset: const Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );
}
