import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:table/table.dart';

part 'table_navigator.g.dart';

TableNavigator commonTableNavigator(BuildContext context) {
  return TableNavigator(
    navigateToTable: () {
      showDialog<void>(
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
        context: context,
      );
    },
  );
}

@riverpod
TableNavigator tableNavigatorImpl(Ref ref, {required BuildContext context}) {
  return commonTableNavigator(context);
}
