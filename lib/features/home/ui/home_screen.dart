// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pet_finder_app/core/themes/app_styles.dart';
// import 'package:pet_finder_app/features/home/logic/cubit/home_cubit.dart';
// import 'package:pet_finder_app/features/home/ui/widgets/category_list.dart';
// import 'package:pet_finder_app/features/home/ui/widgets/list_bloc_builder.dart';
// import 'package:pet_finder_app/features/home/ui/widgets/search_row.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<HomeCubit>(context).emitHomeBreedStates();
//   }

//   String selectedCategory = 'all';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text(
//           'Find Your Forever Pet',
//           style: AppTextStyles.font24W700darkBlack,
//         ),

//         actions: [
//           Container(
//             width: 40.w,
//             height: 40.h,
//             decoration: BoxDecoration(
//               // color: Colors.white,
//               borderRadius: BorderRadius.circular(12.r),
//             ),
//             child: Icon(Icons.notifications_outlined, size: 24.sp),
//           ),
//         ],
//       ),

//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.all(16.0.w),
//           child: Column(
//             children: [
//               const SearchRow(),

//               CategoriesList(
//                 selectedCategory: selectedCategory,
//                 onCategorySelected: (category) {
//                   setState(() {
//                     selectedCategory = category;
//                   });
//                 },
//               ),

//               SizedBox(height: 20.h),

//               const ListBlocBuilder(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
