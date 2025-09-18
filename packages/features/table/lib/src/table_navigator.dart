import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_navigator.freezed.dart';

@freezed
abstract class TableNavigator with _$TableNavigator {
  const factory TableNavigator({
    required void Function(BuildContext context) goBack,
    required VoidCallback navigateToHandDetail,
    required VoidCallback navigateToHandHistory,
    required VoidCallback navigateToTable,
  }) = _TableNavigator;
}
