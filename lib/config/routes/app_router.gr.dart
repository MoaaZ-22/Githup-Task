// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:githup_app/features/home/presentation/pages/details_screen/details_screen.dart'
    as _i1;
import 'package:githup_app/features/home/presentation/pages/main_screen/main_screen.dart'
    as _i3;
import 'package:githup_app/features/home/presentation/pages/search_screen/search_screen.dart'
    as _i4;
import 'package:githup_app/features/home/wrapper/home_wrapper.dart' as _i2;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetailsRouteArgs>(
          orElse: () => DetailsRouteArgs(
                owner: pathParams.getString('owner'),
                repoName: pathParams.getString('repoName'),
                defaultBranch: pathParams.getString('defaultBranch'),
              ));
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailsScreen(
          owner: args.owner,
          repoName: args.repoName,
          defaultBranch: args.defaultBranch,
          key: args.key,
        ),
      );
    },
    HomeWrapper.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeWrapper(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SearchScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailsScreen]
class DetailsRoute extends _i5.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    required String owner,
    required String repoName,
    required String defaultBranch,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          DetailsRoute.name,
          args: DetailsRouteArgs(
            owner: owner,
            repoName: repoName,
            defaultBranch: defaultBranch,
            key: key,
          ),
          rawPathParams: {
            'owner': owner,
            'repoName': repoName,
            'defaultBranch': defaultBranch,
          },
          initialChildren: children,
        );

  static const String name = 'DetailsRoute';

  static const _i5.PageInfo<DetailsRouteArgs> page =
      _i5.PageInfo<DetailsRouteArgs>(name);
}

class DetailsRouteArgs {
  const DetailsRouteArgs({
    required this.owner,
    required this.repoName,
    required this.defaultBranch,
    this.key,
  });

  final String owner;

  final String repoName;

  final String defaultBranch;

  final _i6.Key? key;

  @override
  String toString() {
    return 'DetailsRouteArgs{owner: $owner, repoName: $repoName, defaultBranch: $defaultBranch, key: $key}';
  }
}

/// generated route for
/// [_i2.HomeWrapper]
class HomeWrapper extends _i5.PageRouteInfo<void> {
  const HomeWrapper({List<_i5.PageRouteInfo>? children})
      : super(
          HomeWrapper.name,
          initialChildren: children,
        );

  static const String name = 'HomeWrapper';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SearchScreen]
class SearchRoute extends _i5.PageRouteInfo<void> {
  const SearchRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
