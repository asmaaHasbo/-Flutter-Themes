import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing_in_flutter/core/extensions/theme_extension.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        color: context.containerBackground,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 16.w),
          Icon(Icons.search, size: 24.sp),
          SizedBox(width: 12.w),
          const SearchTextField(),
          Icon(Icons.tune, size: 20.sp),
          SizedBox(width: 16.w),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
