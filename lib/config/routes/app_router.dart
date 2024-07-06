import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:githup_app/config/routes/app_paths.dart';
import 'package:githup_app/config/routes/app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)

/// to print all routes in in stack
// print('routes: ${context.router.stack.map((e) => e.name).toList()}');
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      page: HomeWrapper.page,
      initial: true,
      path: AppPaths.homeWrapper,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        AutoRoute(
          initial: true,
          page: MainRoute.page,
          path: AppPaths.mainScreen,
        ),
        AutoRoute(
          page: DetailsRoute.page,
          path: AppPaths.detailsScreen,
        ),
        AutoRoute(
          page: SearchRoute.page,
          path: AppPaths.searchScreen,
        ),
      ],
    ),
  ];

  /// i need to assign navigator key to this router
  /// so i can use it in main.dart
  @override
  GlobalKey<NavigatorState> get navigatorKey => super.navigatorKey;
}
