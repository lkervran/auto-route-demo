import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:table/table.dart';

@RoutePage()
class HandHistoryAutoRoute extends StatelessWidget {
  const HandHistoryAutoRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HandHistoryScreen();
  }
}
