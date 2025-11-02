import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:testing_in_flutter/core/error/api_error_model.dart';
import 'package:testing_in_flutter/core/error/error_model.dart';

String _getDefaultErrorMessage(DioExceptionType type, {int? statusCode}) {
  if (type == DioExceptionType.badResponse && statusCode != null) {
    switch (statusCode) {
      case 400:
        return 'Please check the following errors:';
      case 401:
        return 'Unauthorized. Please log in again.';
      case 403:
        return 'Forbidden. You don’t have permission to access this resource.';
      case 404:
        return 'Resource not found. Please try again.';
      case 409:
        return 'Conflict. The request could not be completed due to a conflict.';
      case 422:
        return 'Unprocessable entity. Please check your input.';
      case 500:
        return 'An error occurred on the server. Please try again later.';
      case 504:
        return 'Gateway timeout. Please try again later.';
      default:
        return 'Server error (HTTP $statusCode). Please try again later.';
    }
  }
  switch (type) {
    case DioExceptionType.connectionTimeout:
      return 'Connection timeout. Please check your internet connection.';
    case DioExceptionType.sendTimeout:
      return 'Send timeout. Please try again.';
    case DioExceptionType.receiveTimeout:
      return 'Server is taking too long to respond. Please try again.';
    case DioExceptionType.badCertificate:
      return 'Security certificate error. Please contact support.';
    case DioExceptionType.cancel:
      return 'Request was cancelled.';
    case DioExceptionType.connectionError:
      return 'No internet connection. Please check your network.';
    case DioExceptionType.unknown:
      return 'An unexpected error occurred. Please try again.';
    case DioExceptionType.badResponse:
      return 'Server error. Please try again later.';
  }
}

ErrorModel handleDioException(DioException e) {
  final statusCode = e.response?.statusCode;

  // Try to extract error message from response
  if (e.response?.data != null) {
    try {
      Map<String, dynamic> jsonData;

      if (e.response!.data is String) {
        // If response is plain text and not JSON
        return ErrorModel(
          message: _getDefaultErrorMessage(e.type, statusCode: statusCode),
          statusCode: statusCode,
        );
      } else {
        // If response is JSON
        jsonData = e.response!.data as Map<String, dynamic>;
        final apiErrorModel = ApiErrorModel.fromJson(jsonData);

        return ErrorModel(
          message: apiErrorModel.getAllErrorMessages(),
          statusCode: statusCode,
          data: jsonData,
        );
      }
    } catch (parseError) {
      log('Parse error: $parseError');
      return ErrorModel(
        message: _getDefaultErrorMessage(e.type, statusCode: statusCode),
        statusCode: statusCode,
      );
    }
  } else {
    // If there is no response data
    return ErrorModel(
      message: _getDefaultErrorMessage(e.type, statusCode: statusCode),
      statusCode: statusCode,
    );
  }
}
