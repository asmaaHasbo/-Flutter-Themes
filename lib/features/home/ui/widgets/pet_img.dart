// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pet_finder_app/core/themes/app_colors.dart';
// import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';

// class PetImage extends StatelessWidget {
//   const PetImage({super.key, required this.breedModel});
//   final BreedModel breedModel;
//   @override
//   Widget build(BuildContext context) {
//     String imgUrl =
//         'https://cdn2.thecatapi.com/images/${breedModel.referenceImageId}.jpg';

//     return Container(
//       width: 110.w,
//       height: 110.h,
//       // padding: EdgeInsets.all(10.w),
//       decoration: BoxDecoration(
//         color: AppColors.mintGreen,
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadiusGeometry.circular(12.r),
//         child: Image.network(
//           imgUrl,

//           width: double.infinity,
//           fit: BoxFit.cover,
//           errorBuilder: (context, error, stackTrace) {
//             log('img error ${error.toString()}');
//             return const Center(child: Icon(Icons.pets, size: 40));
//           },
//         ),
//       ),
//     );
//   }
// }
