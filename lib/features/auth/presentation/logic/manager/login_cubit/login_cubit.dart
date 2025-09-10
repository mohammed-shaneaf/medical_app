import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_project/core/networking/api_results.dart';
import 'package:medical_project/features/auth/data/models/login_request_body.dart';
import 'package:medical_project/features/auth/data/models/login_response.dart';
import 'package:medical_project/features/auth/data/repos/login_repo.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const LoginState.loading());

    final reseponse = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    reseponse.when(
      success: (LoginResponse loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(
          LoginState.error(
            error:
                error.message ?? "Something Went Wrong Please Try Again Later",
          ),
        );
      },
    );
  }
}
