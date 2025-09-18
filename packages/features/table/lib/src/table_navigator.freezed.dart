// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 void Function(BuildContext context) get goBack; VoidCallback get navigateToHandDetail; VoidCallback get navigateToHandHistory; VoidCallback get navigateToTable;
/// Create a copy of TableNavigator
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TableNavigatorCopyWith<TableNavigator> get copyWith => _$TableNavigatorCopyWithImpl<TableNavigator>(this as TableNavigator, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TableNavigator&&(identical(other.goBack, goBack) || other.goBack == goBack)&&(identical(other.navigateToHandDetail, navigateToHandDetail) || other.navigateToHandDetail == navigateToHandDetail)&&(identical(other.navigateToHandHistory, navigateToHandHistory) || other.navigateToHandHistory == navigateToHandHistory)&&(identical(other.navigateToTable, navigateToTable) || other.navigateToTable == navigateToTable));
}


@override
int get hashCode => Object.hash(runtimeType,goBack,navigateToHandDetail,navigateToHandHistory,navigateToTable);

@override
String toString() {
  return 'TableNavigator(goBack: $goBack, navigateToHandDetail: $navigateToHandDetail, navigateToHandHistory: $navigateToHandHistory, navigateToTable: $navigateToTable)';
}


}

/// @nodoc
abstract mixin class $TableNavigatorCopyWith<$Res>  {
  factory $TableNavigatorCopyWith(TableNavigator value, $Res Function(TableNavigator) _then) = _$TableNavigatorCopyWithImpl;
@useResult
$Res call({
 void Function(BuildContext context) goBack, VoidCallback navigateToHandDetail, VoidCallback navigateToHandHistory, VoidCallback navigateToTable
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
@pragma('vm:prefer-inline') @override $Res call({Object? goBack = null,Object? navigateToHandDetail = null,Object? navigateToHandHistory = null,Object? navigateToTable = null,}) {
  return _then(_self.copyWith(
goBack: null == goBack ? _self.goBack : goBack // ignore: cast_nullable_to_non_nullable
as void Function(BuildContext context),navigateToHandDetail: null == navigateToHandDetail ? _self.navigateToHandDetail : navigateToHandDetail // ignore: cast_nullable_to_non_nullable
as VoidCallback,navigateToHandHistory: null == navigateToHandHistory ? _self.navigateToHandHistory : navigateToHandHistory // ignore: cast_nullable_to_non_nullable
as VoidCallback,navigateToTable: null == navigateToTable ? _self.navigateToTable : navigateToTable // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}

}


/// Adds pattern-matching-related methods to [TableNavigator].
extension TableNavigatorPatterns on TableNavigator {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TableNavigator value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TableNavigator() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TableNavigator value)  $default,){
final _that = this;
switch (_that) {
case _TableNavigator():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TableNavigator value)?  $default,){
final _that = this;
switch (_that) {
case _TableNavigator() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( void Function(BuildContext context) goBack,  VoidCallback navigateToHandDetail,  VoidCallback navigateToHandHistory,  VoidCallback navigateToTable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TableNavigator() when $default != null:
return $default(_that.goBack,_that.navigateToHandDetail,_that.navigateToHandHistory,_that.navigateToTable);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( void Function(BuildContext context) goBack,  VoidCallback navigateToHandDetail,  VoidCallback navigateToHandHistory,  VoidCallback navigateToTable)  $default,) {final _that = this;
switch (_that) {
case _TableNavigator():
return $default(_that.goBack,_that.navigateToHandDetail,_that.navigateToHandHistory,_that.navigateToTable);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( void Function(BuildContext context) goBack,  VoidCallback navigateToHandDetail,  VoidCallback navigateToHandHistory,  VoidCallback navigateToTable)?  $default,) {final _that = this;
switch (_that) {
case _TableNavigator() when $default != null:
return $default(_that.goBack,_that.navigateToHandDetail,_that.navigateToHandHistory,_that.navigateToTable);case _:
  return null;

}
}

}

/// @nodoc


class _TableNavigator implements TableNavigator {
  const _TableNavigator({required this.goBack, required this.navigateToHandDetail, required this.navigateToHandHistory, required this.navigateToTable});
  

@override final  void Function(BuildContext context) goBack;
@override final  VoidCallback navigateToHandDetail;
@override final  VoidCallback navigateToHandHistory;
@override final  VoidCallback navigateToTable;

/// Create a copy of TableNavigator
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TableNavigatorCopyWith<_TableNavigator> get copyWith => __$TableNavigatorCopyWithImpl<_TableNavigator>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TableNavigator&&(identical(other.goBack, goBack) || other.goBack == goBack)&&(identical(other.navigateToHandDetail, navigateToHandDetail) || other.navigateToHandDetail == navigateToHandDetail)&&(identical(other.navigateToHandHistory, navigateToHandHistory) || other.navigateToHandHistory == navigateToHandHistory)&&(identical(other.navigateToTable, navigateToTable) || other.navigateToTable == navigateToTable));
}


@override
int get hashCode => Object.hash(runtimeType,goBack,navigateToHandDetail,navigateToHandHistory,navigateToTable);

@override
String toString() {
  return 'TableNavigator(goBack: $goBack, navigateToHandDetail: $navigateToHandDetail, navigateToHandHistory: $navigateToHandHistory, navigateToTable: $navigateToTable)';
}


}

/// @nodoc
abstract mixin class _$TableNavigatorCopyWith<$Res> implements $TableNavigatorCopyWith<$Res> {
  factory _$TableNavigatorCopyWith(_TableNavigator value, $Res Function(_TableNavigator) _then) = __$TableNavigatorCopyWithImpl;
@override @useResult
$Res call({
 void Function(BuildContext context) goBack, VoidCallback navigateToHandDetail, VoidCallback navigateToHandHistory, VoidCallback navigateToTable
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
@override @pragma('vm:prefer-inline') $Res call({Object? goBack = null,Object? navigateToHandDetail = null,Object? navigateToHandHistory = null,Object? navigateToTable = null,}) {
  return _then(_TableNavigator(
goBack: null == goBack ? _self.goBack : goBack // ignore: cast_nullable_to_non_nullable
as void Function(BuildContext context),navigateToHandDetail: null == navigateToHandDetail ? _self.navigateToHandDetail : navigateToHandDetail // ignore: cast_nullable_to_non_nullable
as VoidCallback,navigateToHandHistory: null == navigateToHandHistory ? _self.navigateToHandHistory : navigateToHandHistory // ignore: cast_nullable_to_non_nullable
as VoidCallback,navigateToTable: null == navigateToTable ? _self.navigateToTable : navigateToTable // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}


}

// dart format on
