import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing_in_flutter/core/extensions/theme_extension.dart';
import 'package:testing_in_flutter/core/shared/chached_img.dart';
import 'package:testing_in_flutter/features/home/data/model/movie_model.dart';
import 'package:testing_in_flutter/features/home/ui/widgets/favorite_btn.dart';
import 'package:testing_in_flutter/features/home/ui/widgets/movie_info.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, this.movieModel});
  final MovieModel? movieModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: context.containerBackground,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImg(posterPath: movieModel?.posterPath),

          // MovieImage(),
          SizedBox(width: 16.w),
          Expanded(child: MovieInfo(movieModel: movieModel)),
          const FavoriteButton(),
        ],
      ),
    );
  }
}
