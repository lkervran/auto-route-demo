import 'package:auto_route/auto_route.dart';
import 'package:common_router/src/presentation/router/navigators/table_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table/table.dart';

@RoutePage()
class TableAutoRoute extends ConsumerWidget {
  const TableAutoRoute({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        tableNavigatorProvider.overrideWith(
          (ref) => ref.read(tableNavigatorImplProvider(context: context)),
        ),
      ],
      child: const TableScreen(),
    );
  }
}
