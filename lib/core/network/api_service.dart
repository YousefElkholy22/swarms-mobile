import 'package:evnto/core/helpers/env/env.dart';

import '../constants/app_constants.dart';
import 'api_constants.dart';
import 'network_info.dart';
import '../service_locator/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/cache/app_prefs.dart';

class ApiService {
  late Dio _dio;

  static Map<String, String> headers = {
    ApiHeaders.contentType: ApiHeaders.applicationJson,
    ApiHeaders.accept: ApiHeaders.applicationJson,
  };

  ApiService() {
    _setUpDioConfig();
    _addPrettyLoggerInterceptor();
    _addNetworkInterceptor();
    _addTokenInterceptor();
  }

  Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
    bool isAI = false,
  }) async {
    if (isAI) _dio.options.baseUrl = Env.aiUrl;
    return await _dio.get(
      endPoint,
      queryParameters: query,
      options: Options(),
    );
  }

  Future<Response> postData({
    required String endPoint,
    required Map<String, dynamic> body,
    Map<String, dynamic>? query,
    bool isAI = false,
  }) async {
    _dio.options.baseUrl = "https://7f42-197-32-29-130.ngrok-free.app";
    return await _dio.post(
      endPoint,
      data: body,
      queryParameters: query,
    );
  }

  Future<Response> deleteData({
    required String endPoint,
    Map<String, dynamic>? query,
    bool isAI = false,
  }) async {
    if (isAI) _dio.options.baseUrl = Env.aiUrl;
    return await _dio.delete(
      endPoint,
      queryParameters: query,
    );
  }

  void _setUpDioConfig() {
    _dio = Dio(
      BaseOptions(
        baseUrl: Env.baseUrl,
        headers: headers,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(milliseconds: 3600),
        receiveTimeout: const Duration(milliseconds: 3600),
      ),
    );
  }

  void _addPrettyLoggerInterceptor() {
    if (!kReleaseMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      );
    }
  }

  void _addNetworkInterceptor() {
    _dio.interceptors.add(
      NetWrokInterceptor(getIt<NetworkInfo>()),
    );
  }

  /// if you use refresh token approach, you need to refactor this interceptor
  void _addTokenInterceptor() {
    final appPrefs = getIt<AppPrefs>();
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          String accessToken =
              await appPrefs.getSecureString(PrefsKeys.accessToken);
          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
      ),
    );
  }
}
