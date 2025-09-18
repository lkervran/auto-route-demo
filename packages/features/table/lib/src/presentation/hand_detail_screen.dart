import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table/table.dart';

class HandDetailScreen extends ConsumerWidget {
  const HandDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: AutoLeadingButton(),
        title: const Text('Hand Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => ref.read(tableNavigatorProvider).goBack(context),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
