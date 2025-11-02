// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pet_finder_app/core/themes/app_colors.dart';
// import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';
// import 'package:pet_finder_app/features/home/ui/widgets/favorite_btn.dart';
// import 'package:pet_finder_app/features/home/ui/widgets/pet_img.dart';
// import 'package:pet_finder_app/features/home/ui/widgets/pet_info.dart';

// class PetCard extends StatelessWidget {
//   const PetCard({super.key, required this.breedModel});
//   final BreedModel breedModel;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16.r),
//         border: Border.all(color: AppColors.gray, width: .3),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           PetImage(breedModel: breedModel),
//           SizedBox(width: 16.w),
//           Expanded(child: PetInfo(breedModel: breedModel)),
//           const FavoriteButton(),
//         ],
//       ),
//     );
//   }
// }
