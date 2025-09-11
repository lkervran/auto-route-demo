import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:table/src/table_navigator.dart';

part 'providers.g.dart';

@riverpod
TableNavigator tableNavigator(Ref ref) {
  throw Exception('tableNavigatorProvider must be overridden by the app');
}
