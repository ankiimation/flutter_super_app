// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mini_app_configs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MiniAppConfigsModel _$MiniAppConfigsModelFromJson(Map<String, dynamic> json) {
  return _MiniAppConfigsModel.fromJson(json);
}

/// @nodoc
class _$MiniAppConfigsModelTearOff {
  const _$MiniAppConfigsModelTearOff();

  _MiniAppConfigsModel call(
      {required String appId,
      required String appName,
      required String appDescription,
      required List<String> pageRoutes}) {
    return _MiniAppConfigsModel(
      appId: appId,
      appName: appName,
      appDescription: appDescription,
      pageRoutes: pageRoutes,
    );
  }

  MiniAppConfigsModel fromJson(Map<String, Object> json) {
    return MiniAppConfigsModel.fromJson(json);
  }
}

/// @nodoc
const $MiniAppConfigsModel = _$MiniAppConfigsModelTearOff();

/// @nodoc
mixin _$MiniAppConfigsModel {
  String get appId => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get appDescription => throw _privateConstructorUsedError;
  List<String> get pageRoutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiniAppConfigsModelCopyWith<MiniAppConfigsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniAppConfigsModelCopyWith<$Res> {
  factory $MiniAppConfigsModelCopyWith(
          MiniAppConfigsModel value, $Res Function(MiniAppConfigsModel) then) =
      _$MiniAppConfigsModelCopyWithImpl<$Res>;
  $Res call(
      {String appId,
      String appName,
      String appDescription,
      List<String> pageRoutes});
}

/// @nodoc
class _$MiniAppConfigsModelCopyWithImpl<$Res>
    implements $MiniAppConfigsModelCopyWith<$Res> {
  _$MiniAppConfigsModelCopyWithImpl(this._value, this._then);

  final MiniAppConfigsModel _value;
  // ignore: unused_field
  final $Res Function(MiniAppConfigsModel) _then;

  @override
  $Res call({
    Object? appId = freezed,
    Object? appName = freezed,
    Object? appDescription = freezed,
    Object? pageRoutes = freezed,
  }) {
    return _then(_value.copyWith(
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      appName: appName == freezed
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appDescription: appDescription == freezed
          ? _value.appDescription
          : appDescription // ignore: cast_nullable_to_non_nullable
              as String,
      pageRoutes: pageRoutes == freezed
          ? _value.pageRoutes
          : pageRoutes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$MiniAppConfigsModelCopyWith<$Res>
    implements $MiniAppConfigsModelCopyWith<$Res> {
  factory _$MiniAppConfigsModelCopyWith(_MiniAppConfigsModel value,
          $Res Function(_MiniAppConfigsModel) then) =
      __$MiniAppConfigsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appId,
      String appName,
      String appDescription,
      List<String> pageRoutes});
}

/// @nodoc
class __$MiniAppConfigsModelCopyWithImpl<$Res>
    extends _$MiniAppConfigsModelCopyWithImpl<$Res>
    implements _$MiniAppConfigsModelCopyWith<$Res> {
  __$MiniAppConfigsModelCopyWithImpl(
      _MiniAppConfigsModel _value, $Res Function(_MiniAppConfigsModel) _then)
      : super(_value, (v) => _then(v as _MiniAppConfigsModel));

  @override
  _MiniAppConfigsModel get _value => super._value as _MiniAppConfigsModel;

  @override
  $Res call({
    Object? appId = freezed,
    Object? appName = freezed,
    Object? appDescription = freezed,
    Object? pageRoutes = freezed,
  }) {
    return _then(_MiniAppConfigsModel(
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      appName: appName == freezed
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appDescription: appDescription == freezed
          ? _value.appDescription
          : appDescription // ignore: cast_nullable_to_non_nullable
              as String,
      pageRoutes: pageRoutes == freezed
          ? _value.pageRoutes
          : pageRoutes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MiniAppConfigsModel extends _MiniAppConfigsModel {
  const _$_MiniAppConfigsModel(
      {required this.appId,
      required this.appName,
      required this.appDescription,
      required this.pageRoutes})
      : super._();

  factory _$_MiniAppConfigsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MiniAppConfigsModelFromJson(json);

  @override
  final String appId;
  @override
  final String appName;
  @override
  final String appDescription;
  @override
  final List<String> pageRoutes;

  @override
  String toString() {
    return 'MiniAppConfigsModel(appId: $appId, appName: $appName, appDescription: $appDescription, pageRoutes: $pageRoutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MiniAppConfigsModel &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.appDescription, appDescription) ||
                const DeepCollectionEquality()
                    .equals(other.appDescription, appDescription)) &&
            (identical(other.pageRoutes, pageRoutes) ||
                const DeepCollectionEquality()
                    .equals(other.pageRoutes, pageRoutes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(appDescription) ^
      const DeepCollectionEquality().hash(pageRoutes);

  @JsonKey(ignore: true)
  @override
  _$MiniAppConfigsModelCopyWith<_MiniAppConfigsModel> get copyWith =>
      __$MiniAppConfigsModelCopyWithImpl<_MiniAppConfigsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MiniAppConfigsModelToJson(this);
  }
}

abstract class _MiniAppConfigsModel extends MiniAppConfigsModel {
  const factory _MiniAppConfigsModel(
      {required String appId,
      required String appName,
      required String appDescription,
      required List<String> pageRoutes}) = _$_MiniAppConfigsModel;
  const _MiniAppConfigsModel._() : super._();

  factory _MiniAppConfigsModel.fromJson(Map<String, dynamic> json) =
      _$_MiniAppConfigsModel.fromJson;

  @override
  String get appId => throw _privateConstructorUsedError;
  @override
  String get appName => throw _privateConstructorUsedError;
  @override
  String get appDescription => throw _privateConstructorUsedError;
  @override
  List<String> get pageRoutes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MiniAppConfigsModelCopyWith<_MiniAppConfigsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
