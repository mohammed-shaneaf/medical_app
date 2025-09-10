

import 'package:medical_project/core/networking/api_error_handler.dart';
import 'package:medical_project/core/networking/api_results.dart';
import 'package:medical_project/core/networking/api_service.dart';
import 'package:medical_project/features/auth/data/models/sign_up_request_body.dart';
import 'package:medical_project/features/auth/data/models/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignUpRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
        return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
