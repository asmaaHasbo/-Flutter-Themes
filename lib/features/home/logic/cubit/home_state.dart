part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

//===================== Home PopularMovies ==================
final class HomePopularMoviesLoading extends HomeState {}

final class HomePopularMoviesSuccess extends HomeState {
  final List<MovieModel> popularMoviesList;
  HomePopularMoviesSuccess({required this.popularMoviesList});
}

final class HomePopularMoviesFailure extends HomeState {
  final String errMsg;
  HomePopularMoviesFailure({required this.errMsg});
}
