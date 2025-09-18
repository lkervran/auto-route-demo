// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tableNavigator)
const tableNavigatorProvider = TableNavigatorProvider._();

final class TableNavigatorProvider
    extends $FunctionalProvider<TableNavigator, TableNavigator, TableNavigator>
    with $Provider<TableNavigator> {
  const TableNavigatorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tableNavigatorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tableNavigatorHash();

  @$internal
  @override
  $ProviderElement<TableNavigator> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TableNavigator create(Ref ref) {
    return tableNavigator(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TableNavigator value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TableNavigator>(value),
    );
  }
}

String _$tableNavigatorHash() => r'dee97881b075d62848b9e82fb0e1f8bf47ef0126';
