import 'package:desktop/src/presentation/router/router_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      color: Colors.white,
      routerConfig: AppRouter().config(),
      title: 'AutoRoute Demo',
    );
  }
}
