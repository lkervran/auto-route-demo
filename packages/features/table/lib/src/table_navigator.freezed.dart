// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_navigator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TableNavigator {

 VoidCallback get navigateToTable;
/// Create a copy of TableNavigator
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TableNavigatorCopyWith<TableNavigator> get copyWith => _$TableNavigatorCopyWithImpl<TableNavigator>(this as TableNavigator, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TableNavigator&&(identical(other.navigateToTable, navigateToTable) || other.navigateToTable == navigateToTable));
}


@override
int get hashCode => Object.hash(runtimeType,navigateToTable);

@override
String toString() {
  return 'TableNavigator(navigateToTable: $navigateToTable)';
}


}

/// @nodoc
abstract mixin class $TableNavigatorCopyWith<$Res>  {
  factory $TableNavigatorCopyWith(TableNavigator value, $Res Function(TableNavigator) _then) = _$TableNavigatorCopyWithImpl;
@useResult
$Res call({
 VoidCallback navigateToTable
});




}
/// @nodoc
class _$TableNavigatorCopyWithImpl<$Res>
    implements $TableNavigatorCopyWith<$Res> {
  _$TableNavigatorCopyWithImpl(this._self, this._then);

  final TableNavigator _self;
  final $Res Function(TableNavigator) _then;

/// Create a copy of TableNavigator
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? navigateToTable = null,}) {
  return _then(_self.copyWith(
navigateToTable: null == navigateToTable ? _self.navigateToTable : navigateToTable // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}

}


/// @nodoc


class _TableNavigator implements TableNavigator {
  const _TableNavigator({required this.navigateToTable});
  

@override final  VoidCallback navigateToTable;

/// Create a copy of TableNavigator
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TableNavigatorCopyWith<_TableNavigator> get copyWith => __$TableNavigatorCopyWithImpl<_TableNavigator>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TableNavigator&&(identical(other.navigateToTable, navigateToTable) || other.navigateToTable == navigateToTable));
}


@override
int get hashCode => Object.hash(runtimeType,navigateToTable);

@override
String toString() {
  return 'TableNavigator(navigateToTable: $navigateToTable)';
}


}

/// @nodoc
abstract mixin class _$TableNavigatorCopyWith<$Res> implements $TableNavigatorCopyWith<$Res> {
  factory _$TableNavigatorCopyWith(_TableNavigator value, $Res Function(_TableNavigator) _then) = __$TableNavigatorCopyWithImpl;
@override @useResult
$Res call({
 VoidCallback navigateToTable
});




}
/// @nodoc
class __$TableNavigatorCopyWithImpl<$Res>
    implements _$TableNavigatorCopyWith<$Res> {
  __$TableNavigatorCopyWithImpl(this._self, this._then);

  final _TableNavigator _self;
  final $Res Function(_TableNavigator) _then;

/// Create a copy of TableNavigator
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? navigateToTable = null,}) {
  return _then(_TableNavigator(
navigateToTable: null == navigateToTable ? _self.navigateToTable : navigateToTable // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}


}

// dart format on
