import 'package:auto_route/auto_route.dart';
import 'package:common_router/common_router.dart';
import 'package:desktop/src/presentation/router/routes/desktop_specific_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'router_config.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    CustomRoute<TableRoute>(
      initial: true,
      page: TableRoute.page,
      customRouteBuilder: <T>(BuildContext context, Widget tableChild, AutoRoutePage<T> tablePage) {
        return PageRouteBuilder<T>(
          settings: tablePage,
          pageBuilder: (_, _, _) {
            return ProviderScope(
              overrides: [
                tableNavigatorImplProvider.overrideWith(
                  (ref, context) {
                    return commonTableNavigator(context).copyWith(
                      navigateToTable: () {
                        context.router.push(const DesktopSpecificRoute());
                      },
                    );
                  },
                ),
              ],
              child: tableChild,
            );
          },
        );
      },
    ),
    AutoRoute(page: DesktopSpecificRoute.page),
  ];
}
