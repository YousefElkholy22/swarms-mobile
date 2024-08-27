import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/cache/app_db.dart';
import '../helpers/cache/app_prefs.dart';
import '../network/api_service.dart';
import '../network/network_info.dart';

final GetIt getIt = GetIt.instance;

Future<void> initServiceLocator() async {
  /// App prefs
  final sharedPrefs = await SharedPreferences.getInstance();
  const storage = FlutterSecureStorage();
  getIt.registerLazySingleton(
    () => AppPrefs(sharedPrefs, storage),
  );

  /// App DB
  getIt.registerLazySingleton(() => AppDB());

  /// api service
  getIt.registerLazySingleton(() => ApiService());

  /// network checker
  getIt.registerLazySingleton(
    () => NetworkInfo(
      InternetConnectionChecker(),
    ),
  );
}
