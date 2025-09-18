import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table/table.dart';

@RoutePage()
class DesktopSpecificScreen extends ConsumerStatefulWidget {
  const DesktopSpecificScreen({super.key});

  @override
  ConsumerState<DesktopSpecificScreen> createState() => _DesktopSpecificScreenState();
}

class _DesktopSpecificScreenState extends ConsumerState<DesktopSpecificScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Desktop Specific Route'),
            ElevatedButton(
              onPressed: () => ref.read(tableNavigatorProvider).goBack(),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
