import 'package:hive_flutter/hive_flutter.dart';
import 'package:testing_in_flutter/core/constant/app_constant.dart';
import 'package:testing_in_flutter/features/home/data/model/movie_model.dart';

class HomeLocalData {
  static const String popularMoviesBox = AppConstant.popularMoviesBox;

  final movieBox = Hive.box<MovieModel>(popularMoviesBox);

  //================= store movies in hive ==============
  Future<void> storePopularMovies(List<MovieModel> movies) async {
    await movieBox.clear(); // Clear previous cached movies
    await movieBox.addAll(movies);
  }

  //================= get Movies from hive ==============
  List<MovieModel> getCachedPopularMovies() {
    if (movieBox.isEmpty) return [];
    return movieBox.values.toList();
  }
}
