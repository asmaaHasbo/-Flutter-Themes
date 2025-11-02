import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:testing_in_flutter/core/error/error_handler.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration requestTimeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();

      dio!.options.connectTimeout = requestTimeOut;
      dio!.options.receiveTimeout = requestTimeOut;
      addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() {
    dio!.options.headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3OTljNDEyNjU2MjQ0MGEzMmVlY2QzNDZmMzJiMTM1NiIsIm5iZiI6MTc2MTk5NzU0OS41NDMsInN1YiI6IjY5MDVmMmVkODFlMzRlNjViYWUxMjg5ZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.xTfcnZgSfakKCB8IWOiBvNdSi3x1AsLjWrbmGF4qt_U",
    };
  }

  static void addDioInterceptors() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        error: true,
      ),
    );
    dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
             
              return handler.next(options);
            },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          final errorMessage = handleDioException(e);
          // print('DioError: ${e.response?.statusCode} - ${e.message} - ${e.response?.data}');
          return handler.reject(
            DioException(
              requestOptions: e.requestOptions,
              response: e.response,
              type: e.type,
              error: errorMessage,
            ),
          );
        },
      ),
    );
  }
}
