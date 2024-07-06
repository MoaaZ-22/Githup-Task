import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:githup_app/config/themes/app_theme.dart';
import 'package:githup_app/core/extensions/size_helper.dart';
import 'package:githup_app/core/widgets/no_glow.dart';
import 'package:githup_app/generated/l10n.dart';
import 'package:githup_app/main.dart';

class GitHupApp extends StatelessWidget {
  const GitHupApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// The [NoGlowScroll] widget is used to remove the scroll glow effect
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      SizeHelper.constraints = constraints;

      return NoGlowScroll(
        /// The [MaterialApp.router] widget is used to define the app's routes
        /// and the [AppRouter] instance that is used to navigate across the app.
        child: MaterialApp.router(
          routerConfig: appRouter.config(),
          title: 'GitHup App',
          locale: const Locale('en'),
          themeMode: ThemeMode.light,
          supportedLocales: S.delegate.supportedLocales,
          theme: AppTheme.theme(),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ),
      );
    });
  }
}
