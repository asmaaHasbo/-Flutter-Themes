// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pet_finder_app/core/themes/app_styles.dart';
// import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';

// class PetInfo extends StatelessWidget {
//   const PetInfo({super.key, required this.breedModel});
//   final BreedModel breedModel;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(breedModel.name!, style: AppTextStyles.font18W700black),
//         SizedBox(height: 4.h),

//         SizedBox(height: 2.h),
//         Text(
//           "${breedModel.lifeSpan!} Months",
//           style: AppTextStyles.font14W400gray,
//         ),
//         SizedBox(height: 8.h),
//         Row(
//           children: [
//             Icon(
//               Icons.location_on,
//               size: 16.sp,
//               color: const Color(0xFFFF5252),
//             ),
//             SizedBox(width: 4.w),
//             SizedBox(
//               width: 130.w,
//               child: Text(
//                 breedModel.origin!,
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//                 // '1.5 km',
//                 style: AppTextStyles.font14W400gray,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
