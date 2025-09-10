import 'package:dio/dio.dart';
import 'package:medical_project/core/networking/api_constants.dart';
import 'package:medical_project/features/auth/data/models/login_request_body.dart';
import 'package:medical_project/features/auth/data/models/login_response.dart';
import 'package:medical_project/features/auth/data/models/sign_up_request_body.dart';
import 'package:medical_project/features/auth/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  // Match: _ApiService(this._dio, {this.baseUrl, this.errorLogger})
  factory ApiService(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body()
      LoginRequestBody loginRequestBody);


  @POST(ApiConstants.register)
  Future<SignupResponse> signup(@Body()
      SignUpRequestBody signUpRequestBody);
}
