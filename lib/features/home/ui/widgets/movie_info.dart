import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing_in_flutter/core/extensions/theme_extension.dart';
import 'package:testing_in_flutter/core/theme/app_colors.dart';
import 'package:testing_in_flutter/core/theme/app_text_style.dart';
import 'package:testing_in_flutter/features/home/data/model/movie_model.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key, required this.movieModel});
  final MovieModel? movieModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          movieModel?.title ?? 'title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.font18W400Gray.copyWith(
            color: context.primaryText,
          ),
        ),
        SizedBox(height: 4.h),

        SizedBox(height: 2.h),
        Text(
          "${movieModel?.voteAverage ?? 100} Points",
          style: AppTextStyles.font14W5white.copyWith(
            color: AppColors.mainColor,
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 130.w,
          child: Text(
            'Language : ${movieModel?.originalLanguage ?? 'en'}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            // '1.5 km',
            style: AppTextStyles.font14W5white.copyWith(
              color: context.secondaryText,
            ),
          ),
        ),
      ],
    );
  }
}
