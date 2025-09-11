// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
