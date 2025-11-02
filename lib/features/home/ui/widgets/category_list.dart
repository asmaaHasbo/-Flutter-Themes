// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pet_finder_app/core/themes/app_styles.dart';
// import 'package:pet_finder_app/features/home/ui/widgets/category_item.dart';

// class CategoriesList extends StatelessWidget {
//   final String selectedCategory;
//   final Function(String) onCategorySelected;

//   const CategoriesList({
//     super.key,
//     required this.selectedCategory,
//     required this.onCategorySelected,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final categories = [
//       {'label': 'All', 'value': 'all'},
//       {'label': 'Cats', 'value': 'cat'},
//       {'label': 'Dogs', 'value': 'dog'},
//       {'label': 'Birds', 'value': 'bird'},
//       {'label': 'Fish', 'value': 'fish'},
//       {'label': 'Reptiles', 'value': 'reptile'},
//     ];

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Categories', style: AppTextStyles.font20W700darkBlack),
//         SizedBox(height: 16.h),
//         SizedBox(
//           height: 48.h,
//           child: ListView.separated(
//             scrollDirection: Axis.horizontal,
//             itemCount: categories.length,
//             separatorBuilder: (context, index) => SizedBox(width: 12.w),
//             itemBuilder: (context, index) {
//               final category = categories[index];
//               return CategoryItem(
//                 label: category['label']!,
//                 value: category['value']!,
//                 isSelected: selectedCategory == category['value'],
//                 onTap: () => onCategorySelected(category['value']!),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
