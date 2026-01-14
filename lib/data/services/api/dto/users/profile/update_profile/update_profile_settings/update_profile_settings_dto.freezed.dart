// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProfileSettingsDto {

 int? get cardsPerSession;
/// Create a copy of UpdateProfileSettingsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileSettingsDtoCopyWith<UpdateProfileSettingsDto> get copyWith => _$UpdateProfileSettingsDtoCopyWithImpl<UpdateProfileSettingsDto>(this as UpdateProfileSettingsDto, _$identity);

  /// Serializes this UpdateProfileSettingsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSettingsDto&&(identical(other.cardsPerSession, cardsPerSession) || other.cardsPerSession == cardsPerSession));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardsPerSession);

@override
String toString() {
  return 'UpdateProfileSettingsDto(cardsPerSession: $cardsPerSession)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileSettingsDtoCopyWith<$Res>  {
  factory $UpdateProfileSettingsDtoCopyWith(UpdateProfileSettingsDto value, $Res Function(UpdateProfileSettingsDto) _then) = _$UpdateProfileSettingsDtoCopyWithImpl;
@useResult
$Res call({
 int? cardsPerSession
});




}
/// @nodoc
class _$UpdateProfileSettingsDtoCopyWithImpl<$Res>
    implements $UpdateProfileSettingsDtoCopyWith<$Res> {
  _$UpdateProfileSettingsDtoCopyWithImpl(this._self, this._then);

  final UpdateProfileSettingsDto _self;
  final $Res Function(UpdateProfileSettingsDto) _then;

/// Create a copy of UpdateProfileSettingsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardsPerSession = freezed,}) {
  return _then(_self.copyWith(
cardsPerSession: freezed == cardsPerSession ? _self.cardsPerSession : cardsPerSession // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileSettingsDto].
extension UpdateProfileSettingsDtoPatterns on UpdateProfileSettingsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileSettingsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileSettingsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileSettingsDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileSettingsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileSettingsDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileSettingsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? cardsPerSession)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileSettingsDto() when $default != null:
return $default(_that.cardsPerSession);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? cardsPerSession)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileSettingsDto():
return $default(_that.cardsPerSession);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? cardsPerSession)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileSettingsDto() when $default != null:
return $default(_that.cardsPerSession);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UpdateProfileSettingsDto implements UpdateProfileSettingsDto {
  const _UpdateProfileSettingsDto({this.cardsPerSession});
  factory _UpdateProfileSettingsDto.fromJson(Map<String, dynamic> json) => _$UpdateProfileSettingsDtoFromJson(json);

@override final  int? cardsPerSession;

/// Create a copy of UpdateProfileSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileSettingsDtoCopyWith<_UpdateProfileSettingsDto> get copyWith => __$UpdateProfileSettingsDtoCopyWithImpl<_UpdateProfileSettingsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProfileSettingsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileSettingsDto&&(identical(other.cardsPerSession, cardsPerSession) || other.cardsPerSession == cardsPerSession));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardsPerSession);

@override
String toString() {
  return 'UpdateProfileSettingsDto(cardsPerSession: $cardsPerSession)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileSettingsDtoCopyWith<$Res> implements $UpdateProfileSettingsDtoCopyWith<$Res> {
  factory _$UpdateProfileSettingsDtoCopyWith(_UpdateProfileSettingsDto value, $Res Function(_UpdateProfileSettingsDto) _then) = __$UpdateProfileSettingsDtoCopyWithImpl;
@override @useResult
$Res call({
 int? cardsPerSession
});




}
/// @nodoc
class __$UpdateProfileSettingsDtoCopyWithImpl<$Res>
    implements _$UpdateProfileSettingsDtoCopyWith<$Res> {
  __$UpdateProfileSettingsDtoCopyWithImpl(this._self, this._then);

  final _UpdateProfileSettingsDto _self;
  final $Res Function(_UpdateProfileSettingsDto) _then;

/// Create a copy of UpdateProfileSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardsPerSession = freezed,}) {
  return _then(_UpdateProfileSettingsDto(
cardsPerSession: freezed == cardsPerSession ? _self.cardsPerSession : cardsPerSession // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
