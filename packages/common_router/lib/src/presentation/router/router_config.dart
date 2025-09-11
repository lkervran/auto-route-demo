import 'package:auto_route/auto_route.dart';
import 'package:common_router/common_router.dart';

part 'router_config.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'AutoRoute,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [];
}
