import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_in_flutter/core/networking/api_result.dart';
import 'package:testing_in_flutter/features/home/data/model/movie_model.dart';
import 'package:testing_in_flutter/features/home/data/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());

  emitPopularMoviesStates() async {
    emit(HomePopularMoviesLoading());
    log('HomeBreedLoading');
    final result = await homeRepo.getPopularMovies();
    result.when(
      success: (popularMoviesList) {
        log('HomePopularMoviesSuccess ${popularMoviesList[0].title}');
        log('HomePopularMoviesSuccess with ${popularMoviesList.length} movies');
        emit(HomePopularMoviesSuccess(popularMoviesList: popularMoviesList));
      },
      failure: (errorModel) {
        log('HomePopularMoviesFailure ${errorModel.message}');
        emit(HomePopularMoviesFailure(errMsg: errorModel.message));
      },
    );
  }
}
