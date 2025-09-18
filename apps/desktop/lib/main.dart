import 'package:auto_route/auto_route.dart';
import 'package:common_router/common_router.dart' hide AppRouter;
import 'package:desktop/src/presentation/router/observers/logging_observer.dart';
import 'package:desktop/src/presentation/router/router_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table/table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        tableNavigatorProvider.overrideWith((ref) {
          return commonTableNavigator(navigatorKey.currentContext!).copyWith(
            navigateToTable: () {
              navigatorKey.currentContext!.router.push(const DesktopSpecificRoute());
            },
          );
        }),
      ],
      child: MaterialApp.router(
        color: Colors.white,
        routerConfig: AppRouter(navigatorKey: navigatorKey).config(
          navigatorObservers: () => [
            LoggingObserver(),
          ],
        ),
        title: 'AutoRoute Demo',
      ),
    );
  }
}
