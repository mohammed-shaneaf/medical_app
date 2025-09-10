import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_project/core/networking/api_results.dart';
import 'package:medical_project/features/auth/data/models/sign_up_request_body.dart';
import 'package:medical_project/features/auth/data/repos/sign_up_repo.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/sign_up_cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignupRepo _signupRepo;
  SignUpCubit(this._signupRepo) : super(const SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfrimationController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  void emitSignupState() async {
    emit(const SignUpState.loading());

    final response = await _signupRepo.signup(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfrimationController.text,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignUpState.success(signupResponse));
      },
      failure: (error) {
        emit(
          SignUpState.error(
            error:
                error.message ?? "Something Went Wrong Please Try Again Later",
          ),
        );
      },
    );
  }


}
