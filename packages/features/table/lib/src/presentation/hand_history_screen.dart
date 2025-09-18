import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table/table.dart';

class HandHistoryScreen extends ConsumerWidget {
  const HandHistoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: AutoLeadingButton(showIfParentCanPop: false),
        title: const Text('Hand History'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => ref.read(tableNavigatorProvider).goBack(context),
              child: const Text('Go back'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(tableNavigatorProvider).navigateToHandDetail(),
              child: const Text('Go to details screen'),
            ),
          ],
        ),
      ),
    );
  }
}
