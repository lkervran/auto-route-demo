import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DesktopSpecificScreen extends StatefulWidget {
  const DesktopSpecificScreen({super.key});

  @override
  State<DesktopSpecificScreen> createState() => _DesktopSpecificScreenState();
}

class _DesktopSpecificScreenState extends State<DesktopSpecificScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Desktop Specific Route'),
            ElevatedButton(
              onPressed: () => context.router.pop(),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
