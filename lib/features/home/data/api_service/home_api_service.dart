import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:testing_in_flutter/core/networking/api_end_pontis.dart';
import 'package:testing_in_flutter/features/home/data/model/movie_response.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiEndPoints.popularMovies)
  Future<MovieResponse> getPopularMovies();
}
