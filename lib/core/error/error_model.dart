class ErrorModel {
  final String message;
  final int? statusCode;
  final Map<String, dynamic>? data;

  ErrorModel({required this.message, this.statusCode, this.data});

  @override
  String toString() => message;
}
