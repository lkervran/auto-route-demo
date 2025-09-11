// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_navigator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(tableNavigatorImpl)
const tableNavigatorImplProvider = TableNavigatorImplFamily._();

final class TableNavigatorImplProvider
    extends $FunctionalProvider<TableNavigator, TableNavigator, TableNavigator>
    with $Provider<TableNavigator> {
  const TableNavigatorImplProvider._({
    required TableNavigatorImplFamily super.from,
    required BuildContext super.argument,
  }) : super(
         retry: null,
         name: r'tableNavigatorImplProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tableNavigatorImplHash();

  @override
  String toString() {
    return r'tableNavigatorImplProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<TableNavigator> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TableNavigator create(Ref ref) {
    final argument = this.argument as BuildContext;
    return tableNavigatorImpl(ref, context: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TableNavigator value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TableNavigator>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TableNavigatorImplProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tableNavigatorImplHash() =>
    r'c527992d43bed8a10b411cc5d9b092b4caac5c61';

final class TableNavigatorImplFamily extends $Family
    with $FunctionalFamilyOverride<TableNavigator, BuildContext> {
  const TableNavigatorImplFamily._()
    : super(
        retry: null,
        name: r'tableNavigatorImplProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TableNavigatorImplProvider call({required BuildContext context}) =>
      TableNavigatorImplProvider._(argument: context, from: this);

  @override
  String toString() => r'tableNavigatorImplProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
