import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing_in_flutter/features/home/data/model/movie_model.dart';
import 'package:testing_in_flutter/features/home/ui/widgets/movie_card.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key, required this.MoviesList});
  final List<MovieModel> ? MoviesList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: MoviesList?.length ?? 0,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => PetDetails(breedModel: breedList[index]),
            //   ),
           // );
          },

          child:  MovieCard(movieModel: MoviesList?[index] ),
        );
      },
    );
  }
}
