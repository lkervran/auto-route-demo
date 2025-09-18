import 'package:auto_route/auto_route.dart';
import 'package:common_router/common_router.dart';
import 'package:flutter/material.dart';
import 'package:table/table.dart';

TableNavigator commonTableNavigator(BuildContext context) {
  return TableNavigator(
    goBack: () {
      navigatorKey.currentContext?.router.pop();
    },
    navigateToTable: () {
      showDialog<void>(
        context: navigatorKey.currentContext!,
        builder: (context) {
          return AlertDialog(
            title: const Text('Common navigator'),
            content: const Text('Hello from common navigator'),
            actions: <Widget>[
              TextButton(
                child: const Text('Close'),
                onPressed: () {
                  context.router.pop();
                },
              ),
            ],
          );
        },
      );
    },
  );
}
