import 'package:dio/dio.dart';
import 'package:medical_project/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      if (error.response != null && error.response?.data != null) {
        try {
          return ApiErrorModel.fromJson(
            error.response!.data as Map<String, dynamic>,
          );
        } catch (_) {
          return ApiErrorModel(
            message: error.response?.statusMessage ?? 'Unknown error occurred',
            code: error.response?.statusCode,
          );
        }
      } else {
        return ApiErrorModel(
          message: error.message ?? 'No response from server',
          code: error.response?.statusCode,
        );
      }
    } else {
      return ApiErrorModel(message: error.toString(), code: null);
    }
  }
}
