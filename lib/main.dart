import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/app.dart';
import 'package:githup_app/config/routes/app_router.dart';
import 'package:githup_app/core/injection_container.dart';
import 'package:githup_app/core/utils/bloc_observer.dart';

/// The [AppRouter] instance that is used to navigate across the app.
final appRouter = AppRouter();

void main() async {
  /// Ensure that the Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  /// Set the preferred orientation to portrait up
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  /// Initialize the dependency injection
  await configureDependencies();

  Bloc.observer = AppBlocObserver();
  runApp(const GitHupApp());
}
