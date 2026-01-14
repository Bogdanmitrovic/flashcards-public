// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OsceSnapshotDto {

 String get name; String get scenario; bool get isPaid;
/// Create a copy of OsceSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OsceSnapshotDtoCopyWith<OsceSnapshotDto> get copyWith => _$OsceSnapshotDtoCopyWithImpl<OsceSnapshotDto>(this as OsceSnapshotDto, _$identity);

  /// Serializes this OsceSnapshotDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceSnapshotDto&&(identical(other.name, name) || other.name == name)&&(identical(other.scenario, scenario) || other.scenario == scenario)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,scenario,isPaid);

@override
String toString() {
  return 'OsceSnapshotDto(name: $name, scenario: $scenario, isPaid: $isPaid)';
}


}

/// @nodoc
abstract mixin class $OsceSnapshotDtoCopyWith<$Res>  {
  factory $OsceSnapshotDtoCopyWith(OsceSnapshotDto value, $Res Function(OsceSnapshotDto) _then) = _$OsceSnapshotDtoCopyWithImpl;
@useResult
$Res call({
 String name, String scenario, bool isPaid
});




}
/// @nodoc
class _$OsceSnapshotDtoCopyWithImpl<$Res>
    implements $OsceSnapshotDtoCopyWith<$Res> {
  _$OsceSnapshotDtoCopyWithImpl(this._self, this._then);

  final OsceSnapshotDto _self;
  final $Res Function(OsceSnapshotDto) _then;

/// Create a copy of OsceSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? scenario = null,Object? isPaid = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,scenario: null == scenario ? _self.scenario : scenario // ignore: cast_nullable_to_non_nullable
as String,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OsceSnapshotDto].
extension OsceSnapshotDtoPatterns on OsceSnapshotDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OsceSnapshotDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OsceSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OsceSnapshotDto value)  $default,){
final _that = this;
switch (_that) {
case _OsceSnapshotDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OsceSnapshotDto value)?  $default,){
final _that = this;
switch (_that) {
case _OsceSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String scenario,  bool isPaid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OsceSnapshotDto() when $default != null:
return $default(_that.name,_that.scenario,_that.isPaid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String scenario,  bool isPaid)  $default,) {final _that = this;
switch (_that) {
case _OsceSnapshotDto():
return $default(_that.name,_that.scenario,_that.isPaid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String scenario,  bool isPaid)?  $default,) {final _that = this;
switch (_that) {
case _OsceSnapshotDto() when $default != null:
return $default(_that.name,_that.scenario,_that.isPaid);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _OsceSnapshotDto implements OsceSnapshotDto {
  const _OsceSnapshotDto({required this.name, required this.scenario, required this.isPaid});
  factory _OsceSnapshotDto.fromJson(Map<String, dynamic> json) => _$OsceSnapshotDtoFromJson(json);

@override final  String name;
@override final  String scenario;
@override final  bool isPaid;

/// Create a copy of OsceSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OsceSnapshotDtoCopyWith<_OsceSnapshotDto> get copyWith => __$OsceSnapshotDtoCopyWithImpl<_OsceSnapshotDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OsceSnapshotDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OsceSnapshotDto&&(identical(other.name, name) || other.name == name)&&(identical(other.scenario, scenario) || other.scenario == scenario)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,scenario,isPaid);

@override
String toString() {
  return 'OsceSnapshotDto(name: $name, scenario: $scenario, isPaid: $isPaid)';
}


}

/// @nodoc
abstract mixin class _$OsceSnapshotDtoCopyWith<$Res> implements $OsceSnapshotDtoCopyWith<$Res> {
  factory _$OsceSnapshotDtoCopyWith(_OsceSnapshotDto value, $Res Function(_OsceSnapshotDto) _then) = __$OsceSnapshotDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String scenario, bool isPaid
});




}
/// @nodoc
class __$OsceSnapshotDtoCopyWithImpl<$Res>
    implements _$OsceSnapshotDtoCopyWith<$Res> {
  __$OsceSnapshotDtoCopyWithImpl(this._self, this._then);

  final _OsceSnapshotDto _self;
  final $Res Function(_OsceSnapshotDto) _then;

/// Create a copy of OsceSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? scenario = null,Object? isPaid = null,}) {
  return _then(_OsceSnapshotDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,scenario: null == scenario ? _self.scenario : scenario // ignore: cast_nullable_to_non_nullable
as String,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
