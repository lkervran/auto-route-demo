import 'package:auto_route/auto_route.dart';
import 'package:common_router/common_router.dart';
import 'package:desktop/src/presentation/router/routes/desktop_specific_route.dart';
import 'package:flutter/cupertino.dart';

part 'router_config.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: TableRoute.page, initial: true),
    AutoRoute(page: DesktopSpecificRoute.page),
    CustomRoute<void>(
      page: const EmptyShellRoute('HandHistoryShellRoute'),
      children: [
        AutoRoute(page: HandHistoryRoute.page),
        AutoRoute(page: HandDetailRoute.page),
      ],
      customRouteBuilder: <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
        return CupertinoSheetRoute<T>(
          builder: (context) => child,
          settings: page,
        );
      },
    ),
  ];
}
