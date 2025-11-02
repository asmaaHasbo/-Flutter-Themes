// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pet_finder_app/core/themes/app_colors.dart';
// import 'package:pet_finder_app/core/themes/app_styles.dart';

// class CategoryItem extends StatelessWidget {
//   final String label;
//   final String value;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const CategoryItem({
//     super.key,
//     required this.label,
//     required this.value,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
//         decoration: BoxDecoration(
//           color: isSelected ? const Color(0xFF4ECDC4) : AppColors.mintGreen,
//           borderRadius: BorderRadius.circular(24.r),
//         ),
//         child: Text(
//           label,
//           style: AppTextStyles.font14W600mainColor.copyWith(
//             color: isSelected ? Colors.white : AppColors.mainColor,
//           ),
//         ),
//       ),
//     );
//   }
// }
