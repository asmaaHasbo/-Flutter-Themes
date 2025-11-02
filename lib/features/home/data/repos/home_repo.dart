import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:testing_in_flutter/core/error/error_handler.dart';
import 'package:testing_in_flutter/core/error/error_model.dart';
import 'package:testing_in_flutter/core/networking/api_result.dart';
import 'package:testing_in_flutter/features/home/data/api_service/home_api_service.dart';
import 'package:testing_in_flutter/features/home/data/model/movie_model.dart';

class HomeRepo {
  HomeApiService homeApiService;
  HomeRepo(this.homeApiService);

  Future<ApiResult<List<MovieModel>>> getPopularMovies() async {
    try {
      final response = await homeApiService.getPopularMovies();
      return ApiResult.success(response.results);
    } on DioException catch (e) {
      log('Dio error ${e.toString()}');

      return ApiResult.failure(handleDioException(e));
    } catch (e) {
      log('catch error ${e.toString()}');
      return ApiResult.failure(ErrorModel(message: e.toString()));
    }
  }
}
