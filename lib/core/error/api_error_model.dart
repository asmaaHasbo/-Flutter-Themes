import 'dart:developer';

class ApiErrorModel {
  bool? isSuccess;
  String? statusMessage;
  int? statusCode;

  ApiErrorModel({this.isSuccess, this.statusMessage, this.statusCode});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    log('Parsing JSON: $json');
    return ApiErrorModel(
      isSuccess: json['success'] as bool?,
      statusMessage: json['status_message'] as String?,
      statusCode: json['status_code'] as int?,
    );
  }

  String getAllErrorMessages() {
    log('Error found: $statusMessage with code: $statusCode');
    return 'Error $statusCode: ${statusMessage ?? 'An error occurred. Please try again.'}';
  }
}
