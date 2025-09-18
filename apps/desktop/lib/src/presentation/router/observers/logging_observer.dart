import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoggingObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('New route pushed: ${route.settings.name} from ${previousRoute?.settings.name}');
    print('Route stack: ${route.navigator?.context.router.stack}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('Route popped: ${route.settings.name}');
    print('Route stack: ${route.navigator?.context.router.stack}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('Route removed: ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    print('Route replaced: ${newRoute?.settings.name}');
  }
}
