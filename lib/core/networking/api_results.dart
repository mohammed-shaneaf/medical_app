import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_project/core/networking/api_error_model.dart'; // <-- Import the correct model

part 'api_results.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ApiErrorModel error) = Failure<T>;
}
