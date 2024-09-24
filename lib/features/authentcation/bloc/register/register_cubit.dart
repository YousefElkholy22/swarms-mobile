import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:evnto/core/router/app_routes.dart';
import 'package:evnto/features/authentcation/bloc/register/register_states.dart';
import 'package:evnto/features/authentcation/data/user_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitStates());

  static RegisterCubit get(context) => BlocProvider.of(context);

  UserModel? userModel;

  void createUser(
    BuildContext context, {
    required String email,
    required String name,
    required String password,
    required String passeordConfirmation,
  }) async {
    emit(RegisterLoadingStates());
    try {
      final response = await Dio()
          .post("https://9f82-156-197-172-156.ngrok-free.app/api/v1/register",
              data: {
                'name': name,
                'email': email,
                'password': password,
                'password_confirmation': passeordConfirmation,
              },
              options: Options(headers: {
                'Accept': 'application/json',
              }));
      if (response.statusCode == 201) {
        // Registration successful
        userModel = UserModel.fromJson(response.data);
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, AppRoutes.questions);
        // ignore: use_build_context_synchronously
      } else {
        log("${response.statusMessage}");
      }

      // ignore: use_build_context_synchronously

      emit(RegisterSuccessStates());
    } catch (e) {
      emit(RegisterErrStates());
    }
  }
}
