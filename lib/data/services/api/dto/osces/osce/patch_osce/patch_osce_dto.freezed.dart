// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_osce_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchOsceDto {

 String? get name; String? get scenario; bool? get isPaid;
/// Create a copy of PatchOsceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchOsceDtoCopyWith<PatchOsceDto> get copyWith => _$PatchOsceDtoCopyWithImpl<PatchOsceDto>(this as PatchOsceDto, _$identity);

  /// Serializes this PatchOsceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchOsceDto&&(identical(other.name, name) || other.name == name)&&(identical(other.scenario, scenario) || other.scenario == scenario)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,scenario,isPaid);

@override
String toString() {
  return 'PatchOsceDto(name: $name, scenario: $scenario, isPaid: $isPaid)';
}


}

/// @nodoc
abstract mixin class $PatchOsceDtoCopyWith<$Res>  {
  factory $PatchOsceDtoCopyWith(PatchOsceDto value, $Res Function(PatchOsceDto) _then) = _$PatchOsceDtoCopyWithImpl;
@useResult
$Res call({
 String? name, String? scenario, bool? isPaid
});




}
/// @nodoc
class _$PatchOsceDtoCopyWithImpl<$Res>
    implements $PatchOsceDtoCopyWith<$Res> {
  _$PatchOsceDtoCopyWithImpl(this._self, this._then);

  final PatchOsceDto _self;
  final $Res Function(PatchOsceDto) _then;

/// Create a copy of PatchOsceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? scenario = freezed,Object? isPaid = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,scenario: freezed == scenario ? _self.scenario : scenario // ignore: cast_nullable_to_non_nullable
as String?,isPaid: freezed == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchOsceDto].
extension PatchOsceDtoPatterns on PatchOsceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchOsceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchOsceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchOsceDto value)  $default,){
final _that = this;
switch (_that) {
case _PatchOsceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchOsceDto value)?  $default,){
final _that = this;
switch (_that) {
case _PatchOsceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? scenario,  bool? isPaid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchOsceDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? scenario,  bool? isPaid)  $default,) {final _that = this;
switch (_that) {
case _PatchOsceDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? scenario,  bool? isPaid)?  $default,) {final _that = this;
switch (_that) {
case _PatchOsceDto() when $default != null:
return $default(_that.name,_that.scenario,_that.isPaid);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _PatchOsceDto implements PatchOsceDto {
  const _PatchOsceDto({this.name, this.scenario, this.isPaid});
  factory _PatchOsceDto.fromJson(Map<String, dynamic> json) => _$PatchOsceDtoFromJson(json);

@override final  String? name;
@override final  String? scenario;
@override final  bool? isPaid;

/// Create a copy of PatchOsceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchOsceDtoCopyWith<_PatchOsceDto> get copyWith => __$PatchOsceDtoCopyWithImpl<_PatchOsceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchOsceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchOsceDto&&(identical(other.name, name) || other.name == name)&&(identical(other.scenario, scenario) || other.scenario == scenario)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,scenario,isPaid);

@override
String toString() {
  return 'PatchOsceDto(name: $name, scenario: $scenario, isPaid: $isPaid)';
}


}

/// @nodoc
abstract mixin class _$PatchOsceDtoCopyWith<$Res> implements $PatchOsceDtoCopyWith<$Res> {
  factory _$PatchOsceDtoCopyWith(_PatchOsceDto value, $Res Function(_PatchOsceDto) _then) = __$PatchOsceDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? scenario, bool? isPaid
});




}
/// @nodoc
class __$PatchOsceDtoCopyWithImpl<$Res>
    implements _$PatchOsceDtoCopyWith<$Res> {
  __$PatchOsceDtoCopyWithImpl(this._self, this._then);

  final _PatchOsceDto _self;
  final $Res Function(_PatchOsceDto) _then;

/// Create a copy of PatchOsceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? scenario = freezed,Object? isPaid = freezed,}) {
  return _then(_PatchOsceDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,scenario: freezed == scenario ? _self.scenario : scenario // ignore: cast_nullable_to_non_nullable
as String?,isPaid: freezed == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
