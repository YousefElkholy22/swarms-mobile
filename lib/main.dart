import 'core/observers/bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'package:flutter/material.dart';
import 'core/service_locator/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// init bloc observer
  Bloc.observer = MyBlocObserver();

  await initServiceLocator();
  
  runApp(const MyApp());
}
  
