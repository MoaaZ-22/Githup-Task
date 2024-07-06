import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:githup_app/core/extensions/object_extensions.dart';

/// A navigator observer that uses AnalyticsHelper.setCurrentScreen to send
class AnalyticsNavigatorObserver extends AutoRouteObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    'didPush: ${route.settings.name}'.log;
    super.didPush(route, previousRoute);
    if (route.settings.name != null) {}
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    'didPop: ${route.settings.name}'.log;
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    'didReplace: ${newRoute?.settings.name}'.log;
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    'didRemove: ${route.settings.name}'.log;
    super.didRemove(route, previousRoute);
  }

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    'didStartUserGesture: ${route.settings.name}'.log;
    super.didStartUserGesture(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    'didChangeTabRoute: ${route.routeInfo.name}'.log;
    super.didChangeTabRoute(route, previousRoute);
  }

  @override
  void didStopUserGesture() {
    'didStopUserGesture'.log;
    super.didStopUserGesture();
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    'didInitTabRoute: ${route.routeInfo.name}'.log;
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void subscribe(AutoRouteAware routeAware, RouteData route) {
    'subscribe: ${route.name}'.log;
    super.subscribe(routeAware, route);
  }
}
