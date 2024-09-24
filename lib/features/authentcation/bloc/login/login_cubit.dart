import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:evnto/core/router/app_routes.dart';
import 'package:evnto/features/authentcation/bloc/login/login_states.dart';
import 'package:evnto/features/authentcation/data/user_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitStates());

  static LoginCubit get(context) => BlocProvider.of(context);

  UserModel? userModel;

  void userLogin(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingStates());
    try {
      final response = await Dio().post(
          "https://9f82-156-197-172-156.ngrok-free.app/api/v1/login",
          data: {'email': email, 'password': password},
          options: Options(headers: {'Accept': 'application/json'}));
      if (response.statusCode == 200) {
        userModel = UserModel.fromJson(response.data);
        log(userModel!.token);
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, AppRoutes.questions);
        // ignore: use_build_context_synchronously
      } else {
        log("${response.statusMessage}");
      }

      emit(LoginSuccessStates());
    } catch (e) {
      emit(LoginErrStates());
    }
  }
}
